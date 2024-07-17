#!/bin/bash

# Function to check if the current init system is supported
function check_current_init_system() {
  # Retrieve the current init system by checking the command name of PID 1
  local current_init_system
  current_init_system=$(ps --no-headers -o comm 1)
  # Define an array of supported init systems
  local supported_init_systems=("systemd" "init" "bash" "sh")
  # Check if the current init system is in the list of supported systems
  if [[ " ${supported_init_systems[*]} " == *" $current_init_system "* ]]; then
    # Supported init system found
    echo "Success: The '${current_init_system}' initialization system is supported."
  else
    # If the init system is not supported, display an error message and exit
    echo "Error: The '${current_init_system}' initialization system is not supported. Please check the documentation for more details."
    exit 1  # Exit with an error status
  fi
}

# Call the function to check the current init system
check_current_init_system
