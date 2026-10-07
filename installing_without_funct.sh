!#/bin/bash 

x=$(id -u)
if [ "$x" -gt 0 ]; then
echo "Run this with root user"
exit 1
fi

dnf install nginx -y
if [ "$?" -gt 0 ]; then 
echo "Nginx successfully installed"
else
echo "Ngnic installation failed"
fi