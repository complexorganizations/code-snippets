#!/usr/bin/env bash

# An example of a string variable
function example_string() {
    name="example"
    echo ${name}
}

example_string

# An example of an integer variable
function example_integer() {
    number=5
    echo ${number}
}

example_integer

# An example of a float variable
function example_float() {
    number=5.5
    echo ${number}
}

example_float

# An example of a boolean variable
function example_boolean() {
    boolean=true
    echo ${boolean}
}

example_boolean

# An example of an array variable
function example_array() {
    array=("example" "array")
    echo "${array[0]}"
    echo "${array[1]}"
}

example_array

# An example of a map variable
function example_map() {
    map[key]="value"
    key="aple"
    echo ${map[key]}
}

example_map
