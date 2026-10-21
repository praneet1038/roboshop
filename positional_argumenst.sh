#!/bin/bash
fruits=(a b c)
echo "fruits are ${fruits[@]}"
echo "fruits are ${!fruits[@]}"
echo "fruits are ${#fruits[@]}"
echo "The first fruit is ${fruits[0]}"
echo "The second fruit is ${fruits[1]}"
echo "The third fruit is ${fruits[2]}"
arr[1]=z
echo "The second fruit is ${fruits[1]}"