# easy-aws-lambda
run aws cli from aws lambda function

## setup

* create repo

![setup-01](images/setup-01.png)

* clone to local
```
(env) [fli@192-168-1-4 ~]$ git clone git@github.com:fen9li/easy-aws-lambda.git
Cloning into 'easy-aws-lambda'...
Warning: Permanently added the RSA host key for IP address '13.236.229.21' to the list of known hosts.
remote: Enumerating objects: 4, done.
remote: Counting objects: 100% (4/4), done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (4/4), 4.53 KiB | 4.53 MiB/s, done.
(env) [fli@192-168-1-4 ~]$ cd easy-aws-lambda/
(env) [fli@192-168-1-4 easy-aws-lambda]$ ll
total 16
drwxrwxr-x. 2 fli fli     6 Mar 13 12:19 images
-rw-rw-r--. 1 fli fli 11357 Mar 13 12:19 LICENSE
-rw-rw-r--. 1 fli fli    55 Mar 13 12:19 README.md
(env) [fli@192-168-1-4 easy-aws-lambda]$ 
```

* add aws access credentials to github secrets

![setup-02](images/setup-02.png)

* setup actions workflow

```
mkdir -p .github/{workflows,upload-lambda-funtion}

[fli@192-168-1-4 easy-aws-lambda]$ tree .github/
.github/
├── upload_lambda_code
│   ├── Dockerfile
│   └── entrypoint.sh
└── workflows
    └── deploy-to-develop-env.yml

2 directories, 3 files
[fli@192-168-1-4 easy-aws-lambda]$
```

* git housekeeping and see if the actions workflow starts as expected

