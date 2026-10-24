#!/bin/bash
if [ "$@" -eq 0 ]; then 
echo "Please provide two arguments"
exit 1
fi
for ((i=$1;i<=$2;i=i+1))
do
echo "$i"
done 