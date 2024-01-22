#!/bin/bash

#############
# Author : Sumeet Karmankar
# Date : 17 January - 2024
# Version : v1
#
# This is the script to track the aws resourse on my instance 

########################################################################



#to initate the code into debug mode where command also are shown while exceuting

set -x


#here is the list of command
#Command will list the s3 bucket in use
echo "S3 DESCRIBTION" 
aws s3 ls 
echo "#############################################"

#command will describe the ec2 instance
echo "EC2  DESCRIBTION" 
aws ec2 describe-instances | jq ".Reservations[].Instances[].InstanceId" 
echo "#############################################"



#commnad will list the IAM users
echo "Lambda  DESCRIBTION" 
aws iam list-users 
echo "#############################################"


#command will list the lamba functions
echo "Lambda  DESCRIBTION" 
aws lambda list-functions 
echo "#############################################"

##comand for list the aws procedure
echo "aws processedors"
aws nproc

