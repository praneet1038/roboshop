#!/bin/bash
#check whether the user is rootuser or not




x=$(id -u)
if [ "$x" -eq 0 ]; then
echo "Running the script as root user"
else
echo "Run the script as root user"
exit 1
fi
mkdir -p /var/log/scripts

file_name="/var/log/scripts/$0.log"

# installing software using function
installing_software(){
package=$1
dnf install "$package" -y &>> "$file_name"
if [ "$?" -eq 0 ]; then
echo "SUCCESSFULLY installed "$package""
else
echo ""$package" installation FAILED!!"
fi
}


main(){
installing_software tree
installing_software wget
installing_software unzip
installing_software tar
}

main