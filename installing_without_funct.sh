!#/bin/bash 

x=$(id -u)
if [ "$x" -gt 0 ]; then
echo "Run this with root user"
exit 1
fi

dnf install nginx -y
if [ "$?" -eq 0 ]; then 
echo "Nginx successfully installed"
else
echo "Ngnix installation failed"
fi