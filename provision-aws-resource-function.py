import boto3
import json

def lambda_handler(event, context):

    s3 = boto3.resource('s3')
    b = 'lambda-function-stack-templates-home'
    objkeys = []
    
    for obj in s3.Bucket(b).objects.all():
        objkeys.append(obj.key)
        
    return {
        'statusCode': 200,
        'body': json.dumps(objkeys)
    }
