#!/bin/bash
fruits=("apple", "banana", "cherry") # This creates the array
echo "All the items/elements that are in this array is: ${fruits[@]}" #This gives all the items that re in array
echo "The index value of the elements/items are: ${!fruits[@]}" # This gets all indexes values
echo "The count of all the items/elements in this array are: ${#fruits[@]}" #This give the count of all the items in an array..in our example it is 3
echo "The first fruit is ${fruits[0]}" #This gives the value that is stored in item holding index zero
echo "The second fruit is ${fruits[1]}"
echo "The third fruit is ${fruits[2]}"
echo "**************************************************"
for fruit in "${fruits[@]}"
do
    echo "$fruit"
done
echo "******************************************************"
fruits[1]=choclate #This update the value of item whose index is 1 to a new value that is choclate in our case
echo "The second fruit is ${fruits[1]}"
echo "****************************************************"

for fruit in "${fruits[@]}"
do
    echo "$fruit"
done

echo "********************************************************"

numbers=(10 20 30 40 50)

echo "First element: ${numbers[0]}"
echo "Third element: ${numbers[2]}"
echo "Array length: ${#numbers[@]}"

echo "All elements:"
for num in "${numbers[@]}"
do
    echo "$num"
done