import boto3
import json

def lambda_handler(event, context):

    s3 = boto3.resource('s3')
    my_bucket = s3.Bucket('lambda-function-stack-templates-home')

    for obj in my_bucket.objects.all():
        print(obj.key)
