#!/bin/bash

x=$(id -u)

if [ $x -ne 0 ]; then
    echo "RUN THIS SCRIPT AS ROOT USER...!!"
    exit 1
else
    echo "RUNNING THE SCRIPT: "$0" "
fi

echo "INSTALLING THE PROVIDED SOFTWARE"

SOFTWARE(){
    which $1
    if [ "$?" -eq 0 ]; then
        echo "This software by the name "$1" is already installed....SKIPPING "
    else
        dnf install $1 -y
        if [ "$?" -ne 0 ]; then
            echo " "$1" NOT INSTALLED "
        else
            echo ""$1" INSTALLED SUCCESSFULLY"
        fi
    fi
}

echo "CHECKING FOR USER IS AUTHORIZED TO RUN THIS SCRIPT OR NOT "

for i in "$@" 
do 
    echo "$i"
    SOFTWARE $i
done

exit 0

