#!/bin/bash

<<<<<<< HEAD
<<<<<<< HEAD
# check if cloudformation stack exists

if ! aws cloudformation describe-stacks --region ${AWS_REGION} --stack-name "${stackName}"; then
    echo 'stack doesnt exist, creating ...' 
    aws cloudformation create-stack --stack-name "${stackName}" --template-url "${stackTemplateUrl}" --capabilities CAPABILITY_IAM --parameters ParameterKey=env,ParameterValue="${env}" 
else
    echo 'stack exists, updating ...'
    aws cloudformation update-stack --stack-name "${stackName}" --template-url "${stackTemplateUrl}" --capabilities CAPABILITY_IAM --parameters ParameterKey=env,ParameterValue="${env}"
fi

exit 0
=======
# display user information from the system.
echo "User info for userid: $USER"
echo UID: $UID
echo HOME: $HOME
echo $0
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 450b9d4... add scripts
=======
echo $1
>>>>>>> 0e377f1... add scripts
=======
echo ${stack-name}
>>>>>>> 6073804... add scripts
=======
echo ${stackName}

echo "##################"
env
>>>>>>> 119d866... add scripts
=======
# check if cloudformation stack exists
aws cloudformation describe-stacks --stack-name "${stackName}" 2>&1 >/dev/null

if [ $? ]
then
    echo 'stack doesnt exist, creating ...' 
    aws cloudformation create-stack --stack-name "${stackName}" --template-url "${stackTemplateUrl}" --capabilities CAPABILITY_IAM --parameters ParameterKey=env,ParameterValue="${env}" 
else
    echo 'stack exists, updating ...'
fi

exit 0
>>>>>>> 20b2b74... add scripts
