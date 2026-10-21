#!/bin/bash
fruits=("apple", "banana", "cherry") # This creates the array
echo "fruits are ${fruits[@]}" #This gives all the items that re in array
echo "fruits are ${!fruits[@]}" # This gets all indexes values
echo "fruits are ${#fruits[@]}" #This give the count of all the items in an array..in our example it is 3
echo "The first fruit is ${fruits[0]}" #This gives the value that is stored in item holding index zero
echo "The second fruit is ${fruits[1]}"
echo "The third fruit is ${fruits[2]}"
fruits[1]=choclate #This update the value of item whose index is 1 to a new value that is choclate in our case
echo "The second fruit is ${fruits[1]}"