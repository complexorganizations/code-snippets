#!/bin/bash

# Append and write to file
function append-and-write() {
    echo "some string here" >>foo.txt
}

append-and-write

# Don't append and write to file
function dont-append-and-write() {
    echo "some string here" >foo.txt
}

dont-append-and-write