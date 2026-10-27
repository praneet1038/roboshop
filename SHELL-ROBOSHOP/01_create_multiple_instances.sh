#!/bin/bash

AMI_ID=ami-0055977a6e828a4f4
SG_ID=sg-013608902b1ff6867

ID=$(aws ec2 run-instances \
    --image-id $AMI_ID \
    --instance-type t2.micro \
    --security-group-ids $SG_ID \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=$INSTANCE}]' \
    --query 'Instances[0].InstanceId' \
    --output text) 

echo "$ID"