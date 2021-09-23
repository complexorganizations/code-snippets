#!/usr/bin/env bash

# Detect Operating System
function dist-check() {
  if [ -e /etc/os-release ]; then
    # shellcheck disable=SC1091
    source /etc/os-release
    DISTRO=${ID}
    DISTRO_VERSION=${VERSION_ID}
  fi
}

# Check Operating System
dist-check

function print-info() {
  echo "${DISTRO}"
  echo "${DISTRO_VERSION}"
}

print-info
