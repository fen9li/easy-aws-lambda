# setup

## create s3 bucket to home lambda function stack templates

> Note: create this s3 bucket manually    
> Note: both dev and prod environments will use this bucket   

* create `lambda-function-stack-templates-home` with tags
```
aws s3 mb s3://lambda-function-stack-templates-home --profile fen9li

aws s3api put-bucket-tagging --bucket lambda-function-stack-templates-home --tagging 'TagSet=[{Key=Createdby,Value=fen9li},{Key=Project,Value=Provision-AWS-via-Lambda-Function}]' --profile fen9li
```

## create s3 buckets to home lambda function zipfile

> Note: create these s3 bucket manually    
> Note: `lambda-function-zipfile-home-dev` for develop environment and `lambda-function-zipfile-home-prod` for production environment

* create `lambda-function-zipfile-home-x` with tags
```
aws s3 mb s3://lambda-function-zipfile-home-dev --profile fen9li

aws s3api put-bucket-tagging --bucket lambda-function-zipfile-home-dev --tagging 'TagSet=[{Key=Createdby,Value=fen9li},{Key=Project,Value=Provision-AWS-via-Lambda-Function},{Key=ChargeTo,Value=dev}]' --profile fen9li

aws s3 mb s3://lambda-function-zipfile-home-prod --profile fen9li

aws s3api put-bucket-tagging --bucket lambda-function-zipfile-home-prod --tagging 'TagSet=[{Key=Createdby,Value=fen9li},{Key=Project,Value=Provision-AWS-via-Lambda-Function},{Key=ChargeTo,Value=dev}]' --profile fen9li
```

## reference
[How can I create an Amazon S3 notification configuration for Lambda on an existing Amazon S3 bucket using AWS CloudFormation](https://aws.amazon.com/premiumsupport/knowledge-center/cloudformation-s3-notification-lambda/)

[An easier way to build AWS Lambda deployment packages — with Docker instead of EC2](https://blog.quiltdata.com/an-easier-way-to-build-lambda-deployment-packages-with-docker-instead-of-ec2-9050cd486ba8)
