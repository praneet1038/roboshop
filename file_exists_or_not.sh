#!/bin/bash
# checking for a file name exists or not 
find / -name uk
if [$? -eq 0 ]; then 
echo "file exists"
exit 0
else
echo "not"
exit 1
fi