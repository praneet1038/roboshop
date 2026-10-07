#!/bin/bash
# check if the user is root or not 
x=$(id -u)
if [ "$x" -ne 0 ]; then 
echo "Run this as ROOT USER"
exit 1 
else 
echo "Running this as root user"
fi 

installing_software(){
package=$1
echo "installing $package"
dnf install "$package" -y
if [ "$?" -eq 0 ];then
echo "$package installation successful"
else
echo "$package installation FAILED"
fi
}

main(){
installing_software nginx
installing_software vim
installing_software git 
installing_software httpd
}

main