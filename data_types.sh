#!/bin/bash
a="$1"
b="$2"
sum=$(($a+$b))
echo "$sum"
echo "The name of the script is "$0""
echo "The number of arguments supplied to the script is "$#""
echo "The script is run by the user: "$USER""
echo "The first argument supplied is "$1" and the second one is "$2""
echo "The exit code of the prvious command is :"$?""
echo "***************************************************************"
fruits=("Apple" "Banana" "Mango")
echo "${fruits[0]}"
echo "${fruits[1]}"
echo "${fruits[2]}"