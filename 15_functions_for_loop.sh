#!/bin/bash



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