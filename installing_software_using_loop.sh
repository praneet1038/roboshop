#!/bin/bash

for i in "$@"
do
echo "installing"
yum install "$i" -y




done

