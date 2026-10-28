#!/bin/bash

AMI_ID=ami-0055977a6e828a4f4
SG_ID=sg-013608902b1ff6867
HOSTEDZONE_ID=Z06383841AXWLS63UNXH7
DOMAIN_NAME=jirawiser.online

for i in "$@"
do
    ID=$(aws ec2 run-instances \
        --image-id $AMI_ID \
        --instance-type t2.micro \
        --security-group-ids $SG_ID \
        --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$i}]" \
        --query 'Instances[0].InstanceId' \
        --output text) 
    echo $ID   
    if [ $i == frontend ]; then 
        IP=$( aws ec2 describe-instances \
        --instance-ids $ID \
        --query 'Reservations[*].Instances[*].PublicIpAddress' \
        --output text ) 
        echo "PUBLIC IP is : $IP"
        RECORD_NAME=$(DOMAIN_NAME)
    else 
        IP=$( aws ec2 describe-instances \
        --instance-ids $ID \
        --query 'Reservations[*].Instances[*].PrivateIpAddress' \
        --output text )
        echo "private IP is : $IP"
        RECORD_NAME=$(i).$(DOMAIN_NAME)
    fi
    

aws route53 change-resource-record-sets \
    --hosted-zone-id $HOSTEDZONE_ID \
    --change-batch '{
        "Changes": [
            {
                "Action": "UPSERT",
                "ResourceRecordSet": {
                    "Name": "$DOMAIN_NAME",
                    "Type": "A",
                    "TTL":1,
                    "ResourceRecords": [
                        {
                            "Value": "$IP"
                        }
                    ]
                }
            }
        ]
    }'   
done
