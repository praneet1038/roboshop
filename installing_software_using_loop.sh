#!/bin/bash

mkdir -p /var/log/scripts
filename="/var/log/scripts/"$0".log"


x=$(id -u)

if [[ $x -eq 0 ]]; then
echo "Installation in progress..Running as root user"| tee -a $filename
else 
echo "Please Run this script as root user"|tee -a $filename
exit 1
fi 

for i in "$@"
do
echo "installing"|tee -a $filename
dnf install "$i" -y|tee -a $filename

done

