#!/bin/bash

#check whether user is rootuser or not 

x=$(id -u)

if [ $x -gt 0 ]; then 
    echo "RUN THIS SCRIPT AS ROOT USER"
    exit 1 
else 
    dnf install nginx -y
fi