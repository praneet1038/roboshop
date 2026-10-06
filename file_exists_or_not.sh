#!/bin/bash
# checking for a file name exists or not 
find / -name uk
If (($?)==0); then 
echo "file exists"
else
echo "not"
fi