#!/usr/bin/env bash

# Check for docker stuff
function app_inside_docker_container() {
  if [ -f /.dockerenv ]; then
    echo "INSIDE_DOCKER_CONTAINER"
  else
    echo "Error: Not running in docker."
    exit
  fi
}

# Docker Check
app_inside_docker_container

# Check and make sure the app isnt running inside docker.
function app_not_inside_docker_container() {
  if [ ! -f /.dockerenv ]; then
    echo "INSIDE_DOCKER_CONTAINER"
  else
    echo "Error: Running in docker."
    exit
  fi
}

app_not_inside_docker_container

# Check if docker is installed
function docker-install-check() {
  if [ -x "$(command -v docker)" ]; then
    echo "Docker is installed in the system"
  fi
}

docker-install-check

# Check and make sure docker isnt installed.
function docker-not-installed-check() {
  if [ ! -x "$(command -v docker)" ]; then
    echo "Docker is not installed in the system"
  fi
}

docker-not-installed-check
