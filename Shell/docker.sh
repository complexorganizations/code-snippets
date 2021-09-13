# Check for docker stuff
function docker-check() {
  if [ -f /.dockerenv ]; then
    INSIDE_DOCKER_CONTAINER=true
  else
    echo "Error: Not running in docker."
    exit
  fi
}

# Docker Check
docker-check

# Check if docker is installed
function docker-install-check() {
  if [ -x "$(command -v docker)" ]; then
    echo "Docker is installed in the system"
  fi
}

docker-install-check