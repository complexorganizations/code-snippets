#!/bin/bash

# Function to check for supported virtualization
function check_virtualization() {
  # Detect the type of virtualization using systemd-detect-virt
  CURRENT_SYSTEM_VIRTUALIZATION=$(systemd-detect-virt)
  # List of supported virtualization types
  SUPPORTED_VIRT_TYPES=("kvm" "none" "qemu" "lxc" "microsoft" "vmware" "xen" "amazon" "docker")
  # Check if the detected virtualization type is in the list of supported types
  if [[ " ${SUPPORTED_VIRT_TYPES[*]} " == *" ${CURRENT_SYSTEM_VIRTUALIZATION} "* ]]; then
    echo "Supported virtualization detected: ${CURRENT_SYSTEM_VIRTUALIZATION}"
  else
    echo "Error: The '${CURRENT_SYSTEM_VIRTUALIZATION}' virtualization is currently not supported. Please stay tuned for future updates."
    exit 1  # Exit with an error status
  fi
}

# Invoke the function to check for supported virtualization
check_virtualization
