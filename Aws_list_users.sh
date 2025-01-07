#!/bin/bash

##################################
# Author: Abhishek Ughade
# Date: 07/01/2025
# Version: v1
# This script will automatically report the AWS Resource Usage
##################################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

echo "Fetching AWS Resource Usage Report..."

# List S3 Buckets
echo "Listing S3 Buckets:"
aws s3 ls

# List EC2 Instances
echo -e "\nListing EC2 Instances:"
aws ec2 describe-instances --query "Reservations[*].Instances[*].[InstanceId,State.Name,InstanceType]" --output table

# List AWS Lambda Functions
echo -e "\nListing AWS Lambda Functions:"
aws lambda list-functions --query "Functions[*].[FunctionName,Runtime]" --output table

# List AWS IAM Users
echo -e "\nListing AWS IAM Users:"
aws iam list-users --query "Users[*].[UserName,UserId]" --output table