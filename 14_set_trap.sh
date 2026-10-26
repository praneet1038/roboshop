

#!/bin/bash

# Two set commands
set -e
set -u

# ERR trap: display the line number of the failure
trap 'echo "ERR trap: Error occurred near line $LINENO"' ERR

# EXIT trap: display the final exit status
trap 'status=$?; echo "EXIT trap: Script exiting with status $status"' EXIT

echo "Example 1: Normal command"
echo "Hello Linux"

echo
echo "Example 2: Running a failing command"
ls /directory_that_does_not_exist

echo "This line will not execute"
