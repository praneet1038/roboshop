#!/bin/bash
set -e 
trap "echo Exiting; exit" ERR

x=$(id -u)
if [ $x -ne 0 ]; then 
    echo "RUN THE SCRIPT AS A ROOT USER...EXITING NOW"
    exit 1
else
    echo "RUNNING THE SCRIPT BY THE NAME: $0 "
fi 

VALIDATE(){
rpm -q $1
echo "$?"
if [ "$?" -eq 0 ]; then 
    echo "$1 PACKAGE IS ALREADY INSTALLED"
else
    echo "$1 IS NOT ISNTALLED....INSTALLING NOW.."
dnf install $1 -y
fi
}

VALIDATE nginx 
VALIDATE tree
VALIDATE dnf