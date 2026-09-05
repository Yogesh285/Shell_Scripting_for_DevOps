#!/bin/bash

##########################
# Author: Yogesh Ingavale
# Date: 03-sep
#
# version: Draft
# This script will report thr AWS resource Usages
# ########################
#
#

set -x

# AWS S3
# AWS EC2
# AWS lambda
# AWS IAM Users

# List AWS S3 buckets
echo "Print list of S3 buckets"
aws s3 ls

# List EC2 Instance
echo "Print list of EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List aws lambda functions
echo "Print list of Lambda functions"
aws lambda list-functions

# List AWS IAM Users
echo "Print list of IAM Users"
aws iam list-users




######################################## Expected Outut ##############################################

root@ip-172-31-4-170:~# ./aws_resource_tracker.sh
+ echo 'Print list of S3 buckets'
Print list of S3 buckets
+ aws s3 ls
2026-08-06 20:16:13 my-ews-baket1yogesh
2026-07-08 11:20:02 samples3awsbucketforpractice
2026-07-07 04:32:58 yogesh-devops-resume
2026-08-06 06:19:33 yogesh-eks-tf-state-2026
+ echo 'Print list of EC2 Instances'
Print list of EC2 Instances
+ aws ec2 describe-instances
+ jq '.Reservations[].Instances[].InstanceId'
"i-0e033348a34d75fe5"
+ echo 'Print list of Lambda functions'
Print list of Lambda functions
+ aws lambda list-functions
{
    "Functions": [
        {
            "FunctionName": "cost-optimization-EBS-snapshot",
            "FunctionArn": "arn:aws:lambda:ap-south-1:424511740066:function:cost-optimization-EBS-snapshot",
            "Runtime": "python3.14",
            "Role": "arn:aws:iam::424511740066:role/service-role/cost-optimization-EBS-snapshot-role-vih5g184",
            "Handler": "lambda_function.lambda_handler",
            "CodeSize": 778,
            "Description": "",
            "Timeout": 10,
            "MemorySize": 128,
            "LastModified": "2026-08-31T09:21:11.000+0000",
            "CodeSha256": "gkhrnCCTRG3o0iX9SsQmRAabYrUoLJJyF5wcN/xBg+w=",
            "Version": "$LATEST",
            "TracingConfig": {
                "Mode": "PassThrough"
            },
            "RevisionId": "b3d94849-b344-4c21-b256-42a4548236a6",
            "PackageType": "Zip",
            "Architectures": [
                "x86_64"
            ],
            "EphemeralStorage": {
                "Size": 512
            },
            "SnapStart": {
                "ApplyOn": "None",
                "OptimizationStatus": "Off"
            },
            "LoggingConfig": {
                "LogFormat": "Text",
                "LogGroup": "/aws/lambda/cost-optimization-EBS-snapshot"
            }
        }
    ]
}
+ echo 'Print list of IAM Users'
Print list of IAM Users
+ aws iam list-users
{
    "Users": [
        {
            "Path": "/",
            "UserName": "3-tier-admin",
            "UserId": "AIDAWFVW7DCRARYGTIYWE",
            "Arn": "arn:aws:iam::424511740066:user/3-tier-admin",
            "CreateDate": "2026-08-02T05:28:35+00:00"
        },
        {
            "Path": "/",
            "UserName": "ansible",
            "UserId": "AIDAWFVW7DCRM3AMGKJC2",
            "Arn": "arn:aws:iam::424511740066:user/ansible",
            "CreateDate": "2026-08-26T16:45:30+00:00"
        },
        {
            "Path": "/",
            "UserName": "DevSecOps-project",
            "UserId": "AIDAWFVW7DCRMTI5ASZE4",
            "Arn": "arn:aws:iam::424511740066:user/DevSecOps-project",
            "CreateDate": "2026-08-09T05:23:37+00:00"
        },
        {
            "Path": "/",
            "UserName": "shell-script",
            "UserId": "AIDAWFVW7DCRBYUM4DZ5V",
            "Arn": "arn:aws:iam::424511740066:user/shell-script",
            "CreateDate": "2026-09-03T11:25:33+00:00"
        }
    ]
}
root@ip-172-31-4-170:~



