!#/bin/bash

x=$(id -u)

if [$x -gt 0]; then
echo "Run this script with root user"
exit 1 
fi