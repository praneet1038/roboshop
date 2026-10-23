#!/bin/bash

NUMBER=$1

if [$NUMBER -lt 100];then

echo "$NUMBER is less than 100"

elif [$NUMBER -eq 100]; then 

echo "$NUMBER is equal to 100"

else 

echo "$NUMBER -gt 100 "

fi


