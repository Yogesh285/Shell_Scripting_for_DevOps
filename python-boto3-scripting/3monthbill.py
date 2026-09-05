import boto3
from datetime import date

ce = boto3.client("ce", region_name="us-east-1")

response = ce.get_cost_and_usage(
    TimePeriod={
        "Start": "2026-06-01",
        "End": "2026-09-01"
    },
    Granularity="MONTHLY",
    Metrics=["UnblendedCost"]
)

print("This is the last 3 months AWS bill:")

for month in response["ResultsByTime"]:
    date_used = month["TimePeriod"]["Start"]
    cost = month["Total"]["UnblendedCost"]["Amount"]

    print(f"Date: {date_used} | Cost: ${cost}")
