#!/bin/bash 

x=$(id -u)
if [ $x -ne 0 ]; then 
echo "Run the script with rootuser privilages...EXITING!!"
exit 1 
else
echo " Running the script"
fi 

VALIDATE(){

if [ "$?" -eq 0 ]; then 
echo ""$2"....SUCCESFULL"
else 
echo ""$2"....NOT SUCCESSFULL"
fi
echo "Number of arguments passed to VALIDATE: $#"
}

which nginx 
if [ "$?" -eq 0 ]; then
echo "NGINX already INSTALLED...SKIPPING"
dnf install nginx -y
VALIDATE $? "INSTALLING NGINX"

dnf install tree -y
VALIDATE $? "INSTALLING tree"

dnf install yum -y
VALIDATE $? "INSTALLING yum"

