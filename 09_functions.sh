#!/bin/bash

 x=$(id -u)
if [ "$x" -ne 0 ]; then
    echo "NOT ROOT"
    exit 1
    else
    echo "STARTING TO INSTALL THE SOFTWARES: "$@" " 
fi

VALIDATE(){
 echo "CHECKING WHETHER THE SOFTWARE IS ALREADY INSTALLED OR NOT "
 echo "**********************************************************"
 rpm -q $1
 if [ "$?" -eq 0 ]; then
    echo " The software by the name "$1" is already installed....SKIPPING"
 else 
    echo "The software by the name "$1" began INSTALLING "
    dnf install $1 -y
 if [ "$?" -eq 0 ]; then
    echo " The software by the name "$1" installed SUCCESSFULLY}"
 else 
    echo "The installation software by the name "$1" FAILED "
 fi
 fi
}

for i in "$@"
do

    echo "$i"
    VALIDATE $i

done 