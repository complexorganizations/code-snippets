import os


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


# Get all the files and folders in a directory
def get_all_folder_files(dir_name):
    return os.listdir(dir_name)


# Get all the folders only in a directory
def get_folders_only(dir_name):
    return [f for f in os.listdir(dir_name) if os.path.isdir(os.path.join(dir_name, f))]


# Get all the files only in a directory
def get_files_only(dir_name):
    return [f for f in os.listdir(dir_name) if os.path.isfile(os.path.join(dir_name, f))]


# Get the current working directory
def get_current_directory():
    return os.getcwd()


def main():
    # Check if the directory exists
    print(check_dir("/"))
    # Create a directory
    create_dir("source/")
    # Get all the files and folders in a directory
    print(get_all_folder_files("source/"))
    # Get all the folders only in a directory
    print(get_folders_only("source/"))
    # Get all the files only in a directory
    print(get_files_only("source/"))
    # Get the current working directory
    print(get_current_directory())
    # Remove a directory
    remove_dir("source/")
    # Change the current working directory
    change_dir("/")

main()
