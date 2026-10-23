#!/bin/bash

ls -l
VALIDATE(){
if [ $1 -eq 0 ]; then
    echo " $2 Successful"
else
    echo " $2 not successful"
    exit 1 
fi
}

id roboshop
VALIDATE $? "roboshop user check "