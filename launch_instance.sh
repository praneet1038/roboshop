```bash
#!/bin/bash
REGION="us-east-1"; AMI_ID="ami-0055977a6e828a4f4"; SG_ID="sg-00e54dadd30605087"
ID=$(aws ec2 run-instances --region "$REGION" --image-id "$AMI_ID" --instance-type t2.micro --security-group-ids "$SG_ID" --count 1 --query 'Instances[0].InstanceId' --output text)
aws ec2 wait instance-running --region "$REGION" --instance-ids "$ID"
aws ec2 describe-instances --region "$REGION" --instance-ids "$ID" --query 'Reservations[0].Instances[0].[PublicIpAddress,PrivateIpAddress]' --output table
```