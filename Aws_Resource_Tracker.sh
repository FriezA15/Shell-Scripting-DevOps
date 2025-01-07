#!/bin/bash 
#
#
#######################
# Author: Abhishek
#  Date: 6th-Jan
#
#   Version V1
#
#    This scripr will report the AWS resource usage
####################### 

# AWS S3
# AWS EC2
# AWS lambda
# AWS IAM Users

# lisr s3 buckets
echo "Print list of s3 buckets"
aws s3 ls

# list EC2 Instances
echo "Print list of ec2  instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list  lambda
echo "Print list of lambda"
aws lambda list-functions

# list IAM Users
echo "Print list of iam users"
aws iam list-users
