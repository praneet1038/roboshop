#!/bin/bash
a="$#"
echo "The number of arguments provided to the script is : "$#""
i=0
while [ "$i" -ge "$a" ]
do 

echo "first argument is: "$i""

i=$((i+1))


done 