#!/bin/bash
a=$(date +%s)
echo "$a"
b=$date #here it wil think it as expanding a varibale by the name date. Therefore it will print an empty string.
sleep 5
c=$(date +%s)
echo "$b"
echo "$c"
ENDTIME=$(($c-$a))
echo "script executed in $ENDTIME seconds"