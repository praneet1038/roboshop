#!/bin/bash

x=$(id -u)

if [ $x -ne 0 ]; then 
    echo "Run the script as root user"
    exit 1
else
    echo "Running as ROOT user"
fi

VALIDATE(){
    if [ "$1" -eq 0 ]; then 
    echo "$2 SUCCESSFUL BY $USER "
else
    echo "$2......FAILED....!!!!!"
    exit 1 
fi
}

cp mongo.repo /etc/yum.repos.d/mongo.repo
VALIDATE $? "COPYING MONGO REPO"

dnf install mongodb-org -y 
VALIDATE $? "INSTALLING MONGODB "

systemctl enable mongod 
VALIDATE $? "ENABLING MONGODB "

systemctl start mongod 
VALIDATE $? "STARTING MONGODB "