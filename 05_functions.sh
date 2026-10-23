#!/bin/bash 

x=$(id -u)
if [ $x -ne 0 ]; then 
echo "Run the script with rootuser privilages...EXITING!!"
exit 1 
else
echo " Running the script"
fi 

VALIDATE(){
echo "Number of arguments passed to VALIDATE: $#"
if [ "$?" -eq 0 ]; then 
echo ""$2"....SUCCESFULL"
else 
echo ""$2"....NOT SUCCESSFULL"
fi
}

dnf install nginx -y

VALIDATE $? "INSTALLING NGINX"

dnf install treeee -y
echo "$?"
VALIDATE $? "INSTALLING tree"

dnf install yum -y

VALIDATE $? "INSTALLING yum"

