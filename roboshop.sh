#!/bin/bash

IMG_ID=ami-0055977a6e828a4f4
SG_ID=sg-013608902b1ff6867

for instance in "$@"
do 

aws ec2 run-instances \
  --region us-east-1 \
  --image-id  $IMG_ID \
  --instance-type t2.micro \
  --security-group-ids $SG_ID \
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$instance}]" \
  --query 'Instances[0].PrivateIpAddress' \
  --output text
  done 
