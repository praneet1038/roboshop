#!/bin/bash
set -x
mkdir -p /var/log/scripts
filename="/var/log/scripts/$0.log"


x=$(id -u)

if [[ $x -eq 0 ]]; then
echo "Installation in progress..Running as root user"| tee -a $filename
else 
echo "Please Run this script as root user"|tee -a $filename
exit 1
fi 

for i in "$@"
do
 dnf list installed "$i"
 if [[ "$?" -ne 0 ]]; then 
echo "installing"|tee -a $filename
dnf install "$i" -y|tee -a $filename
else
echo " $i already installed...therefore skipping      "
fi
done

