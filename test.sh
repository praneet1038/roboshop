#!/bin/bash

x=$(id -u)

y="$#"
i=1
while [ $i -le $y ];
do
 yum install "$i" -y
 i=i+1
done


