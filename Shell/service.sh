#!/bin/bash

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