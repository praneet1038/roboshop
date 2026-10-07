#!/bin/bash
#checking for root user

x=$(id -u)
if [ "$x" -ne 0 ];then 
echo "Run this script as a root user!!"
exit 1 
fi

removing_package(){
package=$1
echo "removing package name : $1"
dnf remove "$1" -y
if [ "$?" -eq 0 ];then
echo "Package $package removed successfully"
else
echo "package $package NOT removed successfully"
fi
}

main(){
removing_package httpd   
removing_package git
removing_package nginx
removing_package vim
}
main