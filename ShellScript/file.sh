#!/usr/bin/env bash

# Check if a file exists
function check_file_exist() {
  if [ -f "/etc/some-folder/file" ]; then
    echo "The file exists"
  fi
}

check_file_exist

# Get the current file path
function get_current_file_path() {
  echo $(realpath "$0")
}

get_current_file_path

# Get all files only in a folder
function get_files_in_folder() {
  find /etc/some-folder -type f
}

get_files_in_folder
