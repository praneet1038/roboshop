!#/bin/bash
#checking for root user
x=$(id -u)
if [ "$x" -ne 0];then 
echo"Run this script as a root user!!"
exit 1 
fi

removing_package(){
package=$1
echo "removing package name : $1"
dnf remove "$1" -y
if [ "$?" -eq 0 ];then
echo "package "$1" removed successfully"
else
echo "package "$1" not removed"
fi
}

main(){

    removing_package httpd
}

main