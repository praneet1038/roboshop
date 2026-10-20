#!/bin/bash

echo "Enter your username:"
read USER_NAME
echo "Enter your password:"
read -s "PASSWORD"
read -p "Enter your age: " age
sleep 5 
echo "Your entered username is $USER_NAME"
echo "Your entered password is $PASSWORD"
echo "Age: $age"
