#!/bin/bash

function service-manager() {
    if pgrep systemd-journal; then
        systemctl disable SERVICE_NAME
        systemctl stop SERVICE_NAME
    else
        service SERVICE_NAME disable
        service SERVICE_NAME stop
    fi
}

service-manager
