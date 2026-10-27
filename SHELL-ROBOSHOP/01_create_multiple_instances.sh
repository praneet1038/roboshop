#!/bin/bash

AMI_ID=ami-0055977a6e828a4f4
SG_ID=sg-013608902b1ff6867

for i in "$@"
do
    ID=$(aws ec2 run-instances \
        --image-id $AMI_ID \
        --instance-type t2.micro \
        --security-group-ids $SG_ID \
        --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$i}]" \
        --query 'Instances[0].InstanceId' \
        --output text) 
done

echo $ID
