# Change the word from foo to bar in a file.
sed -i "s/foo/bar/g" file.txt

# Replace / inside a file
sed -i "s|127.0.0.0/8|127.0.0.1/8|g" file.txt

# Change # inside a file
sed -i "s|#CONTENT_HERE|CONTENT_HERE|g" file.txt
