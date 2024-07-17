#!/bin/bash

# Function to check if there is sufficient disk space for installation
function check_disk_space() {
  # Retrieve the available free space on the root partition in MB
  local free_space_mb
  free_space_mb=$(df -m / | awk 'NR==2 {print $4}') # Extract the fourth field from the second line
  # Check if the available space is more than or equal to 1024 MB (1 GB)
  if [ "$free_space_mb" -ge 1024 ]; then
    echo "Sufficient disk space available: ${free_space_mb} MB."
  else
    # Display an error message if there isn't enough space
    echo "Error: You need more than 1 GB of free space to install. Please free up some space and try again."
    exit 1 # Exit with an error status
  fi
}

# Call the function to check disk space before proceeding with the installation
check_disk_space
