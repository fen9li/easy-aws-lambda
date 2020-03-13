# setup

## create s3 bucket to home lambda function stack templates

> Note: create this s3 bucket manually    
> Note: both dev and prod environments will use this bucket   

* create `lambda-function-stack-templates-home` with tags
```
aws s3 mb s3://lambda-function-stack-templates-home --profile fen9li

aws s3api put-bucket-tagging --bucket lambda-function-stack-templates-home --tagging 'TagSet=[{Key=Createdby,Value=fen9li},{Key=Project,Value=Provision-AWS-via-Lambda-Function}]' --profile fen9li
```


