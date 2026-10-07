#!/bin/bash

make 2>&1 | tee build.log

# If you are using tee command then what this command will do is that it will print in the terminal aswell as to the specified file