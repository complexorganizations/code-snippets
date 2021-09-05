#!/bin/bash

STRING=""
BOOL=false
FLOAT=0.0
INT=0

function variable-checker() {
    if [ -n "${STRING}" ]; then
        echo ${STRING}
        echo "There is a var here"
    fi
    if [ -z "${STRING}" ]; then
        echo "There is no var here"
    fi
}

variable-checker
