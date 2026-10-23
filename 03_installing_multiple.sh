#!/bin/bash

x=$(id -u)

if [ $x -ne 0 ]; then 
    echo "Run the script as root user"
    exit 1
else
    echo "Running as ROOT user"
fi

echo "Installing Nginx...!!"
dnf install nginx -y 

if [ "$?" -eq 0 ]; then 
    echo "NGINX successfully installed by $USER "
else
    echo "NGINX INSTALAATION FAILED....!!!!!"
    exit 1 
fi

echo "Installing tree...!!"
dnf install tree -y 

if [ "$?" -eq 0 ]; then 
    echo "TREE successfully installed by $USER " 
else
    echo "TREE INSTALAATION FAILED....!!!!!"
    exit 1 
fi

echo "Installing nodejs...!!"
dnf install nodejs -y 

if [ "$?" -eq 0 ]; then 
    echo "nodejs successfully installed by $USER " 
else
    echo "nodejs INSTALAATION FAILED....!!!!!"
    exit 1 
fi