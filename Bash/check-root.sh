#!/bin/bash

# Function to check if the script is running with root privileges
function check_root() {
  # Get the user ID of the current user
  local user_id=$(id -u)
  # Check if the user ID is not equal to 0 (0 indicates the root user)
  if [[ "$user_id" -ne 0 ]]; then
    echo "Error: This script must be run as root. Please use 'sudo' or log in as the root user."
    exit 1  # Exit with an error status
  fi
}

# Call the function to verify root privileges
check_root
