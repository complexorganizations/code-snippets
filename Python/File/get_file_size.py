import os



# Get the size of a given file.
def get_file_size(system_path):
    return os.path.getsize(system_path)


def main():
    # Get the size of a given file.
    print(get_file_size("assets/valid/valid-json.json"))


main()
