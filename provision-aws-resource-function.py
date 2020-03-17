import boto3
import json

def lambda_handler(event, context):

    s3 = boto3.resource('s3')
    bucketname = 'lambda-function-stack-templates-home'
    my_bucket = s3.Bucket(bucketname)

    for obj in my_bucket.objects.all():
        print(obj.key)

    return {
        'statusCode': 200,
        'body': json.dumps('The contents in bucket ' + bucketname + ' are :') 
    }
