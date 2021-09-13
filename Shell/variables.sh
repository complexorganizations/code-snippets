#!/bin/bash

STRING=""
BOOL=false
FLOAT=0.0
INT=0

function variable-checker() {
    # Check if there is content inside the variable.
    if [ -n "${STRING}" ]; then
        echo "There is a var here"
    fi
    # Check if there is nothing inside a variable
    if [ -z "${STRING}" ]; then
        echo "There is no var here"
    fi
}

variable-checker


# Create an array
declare -a ARRAY
ARRAY[0]="Hello"
ARRAY[1]="World"
ARRAY[2]="!"

echo ${ARRAY[0]}
# Print the whole array
echo ${ARRAY[@]}

SECOND_ARRAY=(1 2 3 4 5)
echo ${SECOND_ARRAY[@]}