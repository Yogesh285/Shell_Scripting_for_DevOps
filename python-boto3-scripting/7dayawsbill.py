import boto3
from datetime import date, timedelta

ce = boto3.client("ce", region_name="us-east-1")

today = date.today()
start_date = today - timedelta(days=7)

response = ce.get_cost_and_usage(
    TimePeriod={
        "Start": str(start_date),
        "End": str(today)
    },
    Granularity="DAILY",
    Metrics=["UnblendedCost"]
)

print("This is the weekly AWS bill:")

for day in response["ResultsByTime"]:
    date_used = day["TimePeriod"]["Start"]
    cost = day["Total"]["UnblendedCost"]["Amount"]

    print(f"Date: {date_used} | Cost: ${cost}")
