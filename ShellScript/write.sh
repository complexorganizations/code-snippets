#!/usr/bin/env bash

# Append and write to file
function append-and-write() {
    echo "${1}" >>foo.txt
}

append-and-write "Hello World"

# Write some text to a file with appending to it
function write-to-file-with-append() {
    echo "some string here" >>foo.txt
}

write-to-file-with-append

# Don't append and write to file
function dont-append-and-write() {
    echo "${1}" >bar.txt
}

dont-append-and-write "Hello World"

# Write some text to a file while not appending to it.
function write-to-file-without-append() {
    echo "some stuff here" >bar.txt
}

write-to-file-without-append
