#!/bin/bash

echo "The name of  this script is : "$0""

echo "The first varibale passed to this script is : "$1""

echo " The list of  variables that are passed to this script are "$@" "

echo "The total number of variables supplied to this script are "$#" "

echo "The present directory is "$PWD""

echo  "The home directory of the present user is "$HOME" "

echo  "The user that is running the script is "$USER" "

echo "The systems host name is "$HOSTNAME""

echo "The Directories where commands are searched are "$PATH""

echo "Let me generate a random number from 0 till 32767: "$RANDOM""

echo "The exit status of previous command is "$?" "


