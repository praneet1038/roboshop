#!/bin/bash

name="JAHANGIR"
age=99
echo "my name is $name"
echo "my age is $age"
echo "This is from second and my pid is: $$"
echo "*************************************"
source ./first.sh
echo "my name is $name"
echo "my age is $age"
echo "**********************************"
echo "This is from second and my pid is: $$"