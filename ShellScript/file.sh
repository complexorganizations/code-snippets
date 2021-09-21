# Check if a file exists
if [ -f "/etc/some-folder/file" ]; then
  echo "The file exists"
fi


# Get the current file path
echo $(realpath "$0")
