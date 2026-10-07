#!/bin/bash
#check whether the user is rootuser or not
x=$(id -u)
if [ "$x" -eq 0 ]; then
echo "Running the script as root user"
else
echo "Run the script as root user"
exit 1
fi

# installing software using function
installing_software(){
package=$1
dnf install "$package" -y 
if [ "$?" -eq 0 ]; then
echo "SUCCESSFULLY installed "$package""
else
echo ""$package" installation FAILED!!"
fi
}

installing_software tree