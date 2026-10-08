#!/bin/bash

for i in "$@"

do
echo "installing"
dnf install "$i" -y

done

