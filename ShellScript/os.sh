#!/usr/bin/env bash

# Require script to be run as root
function super-user-check() {
  if [ "${EUID}" -ne 0 ]; then
    echo "You need to run this script as super user."
    exit
  fi
}

# Check for root
super-user-check

# Detect Operating System
function dist-check() {
    if [ -e /etc/os-release ]; then
        # shellcheck disable=SC1091
        source /etc/os-release
        DISTRO=${ID}
        echo "${DISTRO}"
        DISTRO_VERSION=${VERSION_ID}
        echo "${DISTRO_VERSION}"
    fi
}

# Check Operating System
dist-check

# Get the current kernel version
function kernel-check() {
    if [ -f "/proc/version" ]; then
        CURRENT_KERNEL_VERSION=$(awk </proc/version '{print $3}' | cut -d'.' -f1-2)
        echo "${CURRENT_KERNEL_VERSION}"
    fi
}

# Current kernel version
kernel-check

# Checking For Virtualization
function virt-check() {
    # Deny OpenVZ Virtualization
    if [ "$(systemd-detect-virt)" == "openvz" ]; then
        echo "OpenVZ virtualization is not supported (yet)."
        exit
    # Deny LXC Virtualization
    elif [ "$(systemd-detect-virt)" == "lxc" ]; then
        echo "LXC virtualization is not supported (yet)."
        exit
    # Deny KVM Virtualization
    elif [ "$(systemd-detect-virt)" == "kvm	" ]; then
        echo "KVM virtualization is not supported (yet)."
        exit
    fi
}

# Virtualization Check
virt-check

#!/usr/bin/env bash

# Enable a service
function enable-service() {
    if pgrep systemd-journal; then
        systemctl enable SERVICE_NAME
    else
        service SERVICE_NAME enable
    fi
}

enable-service

# Start a service
function start-service() {
    if pgrep systemd-journal; then
        systemctl start SERVICE_NAME
    else
        service SERVICE_NAME start
    fi
}

start-service

# Restart a service
function restart-service() {
    if pgrep systemd-journal; then
        systemctl restart SERVICE_NAME
    else
        service SERVICE_NAME restart
    fi
}

restart-service

# Reenable a service
function renable-service() {
    if pgrep systemd-journal; then
        systemctl reenable SERVICE_NAME
        systemctl restart SERVICE_NAME
    else
        service SERVICE_NAME reenable
        service SERVICE_NAME restart
    fi
}

renable-service

# Stop a service
function stop-service() {
    if pgrep systemd-journal; then
        systemctl stop SERVICE_NAME
    else
        service SERVICE_NAME stop
    fi
}

stop-service

# Disable a service
function disable-service() {
    if pgrep systemd-journal; then
        systemctl disable SERVICE_NAME
    else
        service SERVICE_NAME disable
    fi
}

disable-service

function status-service() {
    if pgrep systemd-journal; then
        systemctl status SERVICE_NAME
        systemctl is-active SERVICE_NAME
    else
        service SERVICE_NAME status
    fi
}

status-service
