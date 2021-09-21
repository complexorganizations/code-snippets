import os


def main():
    # Check if the directory exists
    print(check_dir("/src/"))
    # Create a directory
    create_dir("/src/")
    # Remove a directory
    remove_dir("/src/")
    # Change the current working directory
    change_dir("/src/")


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
