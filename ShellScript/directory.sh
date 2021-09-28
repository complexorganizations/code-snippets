# Check if a folder exists
function directory_exists() {
  if [ -d "/" ]; then
    echo "The folder exists"
  else
    echo "The folder does not exist"
  fi
}

directory_exists

# Check if a directory dosent exist
function directory_doesnt_exist() {
  if [ ! -d "/" ]; then
    echo "The folder does not exist"
  else
    echo "The folder exists"
  fi
}

directory_doesnt_exist

# Get a list of all the folders in a directory
function list_folders() {
  if [ -d "/" ]; then
    ls -d */
  fi
}

list_folders