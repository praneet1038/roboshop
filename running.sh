#!/bin/bash

trap 'echo "You pressed Ctrl+C!"' INT

while true
do
    echo "Running..."
    sleep 1
done