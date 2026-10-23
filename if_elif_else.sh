#!/bin/bash

NUMBER=$1

#making sure that he is providing atleast one argument

if [ "$#" -eq 0 ]; then 
    echo "Please provide atleast one argument"
elif [ $NUMBER -lt 100 ]; then
    echo "$NUMBER is less than 100"
elif [ $NUMBER -eq 100 ]; then 
    echo "$NUMBER is equal to 100"
else 
    echo "$NUMBER is greater than 100 "
fi
 echo "The exit code if "$?" "

