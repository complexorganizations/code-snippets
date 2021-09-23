#!/usr/bin/env bash

function simple_switch() {
    FIRST_NAME="Jane Doe"
    case "${FIRST_NAME}" in
    "Jane Doe")
        echo "The name is Jane Doe"
        ;;
    "John Doe")
        echo "The name is John Doe"
        ;;
    esac
}

simple_switch
