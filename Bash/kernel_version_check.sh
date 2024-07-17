#!/bin/bash

# Function to check the current kernel version against a minimum required version
function kernel_version_check() {
  # Get the current kernel version and extract major and minor version numbers
  local current_kernel_version
  current_kernel_version=$(uname --kernel-release)
  local current_kernel_major_version
  local current_kernel_minor_version
  current_kernel_major_version=$(echo "$current_kernel_version" | cut -d '.' -f 1)
  current_kernel_minor_version=$(echo "$current_kernel_version" | cut -d '.' -f 2)
  # Define the minimum allowed kernel version
  local allowed_kernel_version="3.1"
  local allowed_kernel_major_version
  local allowed_kernel_minor_version
  allowed_kernel_major_version=$(echo "$allowed_kernel_version" | cut -d '.' -f 1)
  allowed_kernel_minor_version=$(echo "$allowed_kernel_version" | cut -d '.' -f 2)
  # Check if the current kernel version meets the minimum requirements
  if [ "$current_kernel_major_version" -lt "$allowed_kernel_major_version" ] || { [ "$current_kernel_major_version" -eq "$allowed_kernel_major_version" ] && [ "$current_kernel_minor_version" -lt "$allowed_kernel_minor_version" ]; }; then
    # If the current kernel version is below the allowed version, show an error message and exit
    echo "Error: Your current kernel version ${current_kernel_version} is not supported."
    echo "Please update to version ${allowed_kernel_version} or later."
    exit 1 # Exit with an error status
  fi
  # If the kernel version is supported, optionally provide a success message
  echo "Kernel version ${current_kernel_version} is supported."
}

# Call the kernel_check function to verify the kernel version
kernel_version_check
