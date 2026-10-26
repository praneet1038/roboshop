#!/bin/bash
ID=$(aws ec2 run-instances --region us-east-1 --image-id ami-0055977a6e828a4f4 --instance-type t2.micro --security-group-ids sg-013608902b1ff6867 --query 'Instances[0].InstanceId' --output text)

aws ec2 wait instance-running --region us-east-1 --instance-ids "$ID"

aws ec2 describe-instances --region us-east-1 --instance-ids "$ID" \
  --query 'Reservations[0].Instances[0].[PublicIpAddress,PrivateIpAddress]' \
  --output text | awk '{print "Public IP: "$1"\nPrivate IP: "$2}'