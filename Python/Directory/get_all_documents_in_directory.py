import os


# Get all the documents in a given directory.
def get_all_documents_in_directory(system_path):
    return os.listdir(system_path)


def main():
    # Get all the documents in a given directory 
    print(get_all_documents_in_directory("assets/valid/aDT5V7223266kFX4uv9P9o7ovi6tdWhv"))


main()
