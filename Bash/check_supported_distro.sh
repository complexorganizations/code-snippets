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

# Function to check if the current distribution is supported
function check_supported_distro() {
  # List of supported distributions
  local supported_distros=("ubuntu" "debian" "raspbian" "pop" "kali" "linuxmint" "neon" "fedora" "centos" "rhel" "almalinux" "rocky" "arch" "archarm" "manjaro" "alpine" "freebsd" "ol")
  # Check if the current distribution is in the list of supported distros
  if [[ ! " ${supported_distros[*]} " =~ " ${CURRENT_DISTRO} " ]]; then
    echo "Error: Your current distribution ${CURRENT_DISTRO} is not supported."
    exit 1 # Exit with an error status
  fi
}

# Call the function to check if the distro is supported
check_supported_distro
