#!/bin/bash

NUMBER=$1

#making sure that he is providing atleast one argument

if [ "$#" -eq 0 ]; then 
    echo "Please provide atleast one argument"
    exit 1
fi

if [ $NUMBER -lt 100 ]; then
    echo "$NUMBER is less than 100"
elif [ $NUMBER -eq 100 ]; then 
    echo "$NUMBER is equal to 100"
else 
    echo "$NUMBER -gt 100 "
fi


