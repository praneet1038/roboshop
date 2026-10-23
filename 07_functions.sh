#!/bin/bash

sum(){
a=$(($1+$2))
echo "$a"

}

sub(){
a=$(($1-$2))
echo "$a"

}
sum 1 2 
sub 3 2