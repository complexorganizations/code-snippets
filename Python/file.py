import os


# Function to remove a file
def remove_file(file_name):
    os.remove(file_name)


# Function to rename a file
def rename_file(file_name, new_name):
    os.rename(file_name, new_name)


# Write some content to a file
def write_to_file(file_name, content):
    with open(file_name, "w") as file:
        file.write(content)


# Check if a file exists
def file_exists(file_name):
    return os.path.isfile(file_name)


# Read a file into a string and return it
def read_file(file_name):
    with open(file_name, "r") as file:
        return file.read()


def main():
    # Write to a file
    write_to_file("test.txt", "Hello World!")
    # Check if a file exists
    print(file_exists("test.txt"))
    # Read a file
    print(read_file("test.txt"))
    # Rename a file
    rename_file("test.txt", "new_test.txt")
    # Remove a file
    remove_file("new_test.txt")


main()
