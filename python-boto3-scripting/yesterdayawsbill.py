import boto3
from datetime import date, timedelta

ce = boto3.client("ce", region_name="us-east-1")

yesterday = date.today() - timedelta(days=1)
today = date.today()

response = ce.get_cost_and_usage(
    TimePeriod={
        "Start": yesterday.strftime("%Y-%m-%d"),
        "End": today.strftime("%Y-%m-%d")
    },
    Granularity="DAILY",
    Metrics=["UnblendedCost"]
)

cost = response["ResultsByTime"][0]["Total"]["UnblendedCost"]["Amount"]

print("This is yesterday's AWS bill:")
print(f"Date: {yesterday}")
print(f"Cost: ${cost}")
