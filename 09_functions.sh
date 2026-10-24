#!/bin/bash

LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="$LOGS_FOLDER."$0".log"

 x=$(id -u)
if [ "$x" -ne 0 ]; then
    echo "NOT ROOT" | tee -a $LOGS_FILE
    exit 1
    else
    echo "STARTING TO INSTALL THE SOFTWARES: "$@" " | tee -a $LOGS_FILE
fi

VALIDATE(){
 echo "CHECKING WHETHER THE SOFTWARE IS ALREADY INSTALLED OR NOT " | tee -a $LOGS_FILE
 echo "**********************************************************" | tee -a $LOGS_FILE
 rpm -q $1
 if [ "$?" -eq 0 ]; then
    echo " The software by the name "$1" is already installed....SKIPPING" | tee -a $LOGS_FILE
 else 
    echo "The software by the name "$1" began INSTALLING " | tee -a $LOGS_FILE
    dnf install $1 -y
 if [ "$?" -eq 0 ]; then
    echo " The software by the name "$1" installed SUCCESSFULLY}" | tee -a $LOGS_FILE
 else 
    echo "The installation software by the name "$1" FAILED " | tee -a $LOGS_FILE
 fi
 fi
}

for i in "$@"
do

    echo "$i"
    VALIDATE $i

done 