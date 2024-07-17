#!/bin/bash

# Function to gather current system details
function get_system_information() {
  # Check if the /etc/os-release file exists, which contains OS information
  if [ -f /etc/os-release ]; then
    # Source the /etc/os-release file to import system variables
    # shellcheck source=/dev/null
    source /etc/os-release
    # Store the distribution ID
    CURRENT_DISTRO="${ID}"
    # Store the distribution version ID
    CURRENT_DISTRO_VERSION="${VERSION_ID}"
  else
    echo "Warning: /etc/os-release not found. Unable to gather system information."
  fi
}

# Invoke the function to gather system information
get_system_information

# Optional: Output the gathered information
echo "Distribution: ${CURRENT_DISTRO}"
echo "Version: ${CURRENT_DISTRO_VERSION}"
