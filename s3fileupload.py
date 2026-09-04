# Upload the local HTML resume file to an Amazon S3 bucket using boto3 

import boto3
s3 = boto3.resource('s3')
s3.meta.client.upload_file(r"C:\Users\yogesh\Documents\boto3\online_resume.html" , 'yogesh-devops-resume', 'online_resume.html')
