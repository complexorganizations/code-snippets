# Check for docker stuff
function docker-check() {
  if [ -f /.dockerenv ]; then
    DOCKER_INSTALLED=true
  else
    echo "Error: Not running in docker."
    exit
  fi
}

# Docker Check
docker-check
