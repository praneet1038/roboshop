#!/bin/bash

greet(){

echo "Hello! "$1" "
echo "Hi "$2", How are you?"
echo "The number of inputs given are: "$#" "
echo "The actual inputs that are given are: "$@""
}

greet sonila meena
greet modi putin
greet Trump Zelensky