#!/bin/bash

x=$(id -u)
y="$#"
echo "$y"
a=$1

if [ $x -ne 0 ]; then 
    echo "Run the script as root user"
    exit 1
else
    echo "Running as ROOT user"
fi

echo "Installing "$1"...!!"
dnf install "$1" -y 

if [ "$?" -eq 0 ]; then 
    echo " "$1" successfully installed by $USER "
else
    echo ""$1" INSTALAATION FAILED....!!!!!"
    exit 1 
fi