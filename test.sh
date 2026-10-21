#!/bin/bash

a=$#
echo "The number of arguments provided to the script is: $a"

i=1
while [ "$i" -le "$a" ]
do
    echo "Argument $i is: ${!i}"
    i=$((i + 1))
done