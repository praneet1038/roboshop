#!/bin/bash

for i in "$@"
do 
echo "$i"
done  

echo "THIS IS ANOTHER PROGRAM"

for i in {1..10}
do 
echo "$i"
done 

echo "THIS IS ANOTHER PROGRAM"

x=$1
for ((i=1;i -le $x ; i=i+1))
do 
touch india$i
done