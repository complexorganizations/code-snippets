#!/bin/bash

FIRST_QUESTION = ""

function variable-checker() {
    if [ -n "${FIRST_QUESTION}" ]; then
        echo ${FIRST_QUESTION}
        echo "There is a var here"
    fi
    if [ -z "${FIRST_QUESTION}" ]; then
        echo "There is no var here"
    fi
}

variable-checker
