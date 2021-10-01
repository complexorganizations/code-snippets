#!/usr/bin/env bash

# Clear the terminal
function clear_terminal() {
    echo "\033c"
}

# Take in user input and echo it back
function user_input() {
    read -rp "User provided input:" USER_INPUT
    echo "${USER_INPUT}"
}
