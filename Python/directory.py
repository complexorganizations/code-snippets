import os

def main():
    print(check_dir("/src/"))

main()

# Check if a directory exists
def check_dir(dir_name):
    return os.path.exists(dir_name)

# Create a directory
def create_dir(dir_name):
    os.mkdir(dir_name)

# Remove a directory
def remove_dir(dir_name):
    os.rmdir(dir_name)

# Change the current working directory
def change_dir(dir_name):
    os.chdir(dir_name)
