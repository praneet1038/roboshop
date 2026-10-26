#!/bin/bash
x=$(id -u)
if [ $x -ne 0 ]; then 
    echo "RUN THE SCRIPT AS A ROOT USER...EXITING NOW"
else
    echo "RUNNING THE SCRIPT BY THE NAME: $0 "
fi 