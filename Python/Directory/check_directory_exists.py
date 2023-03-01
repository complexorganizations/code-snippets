import os


# Check if a given directory exists.
def check_directory_exists(system_path):
    return os.path.exists(system_path)


def main():
    # Check if a given directory exists.
    print(check_directory_exists("assets/valid/j3U5uJY779L49q98MX86iFsxs2kY9ew3"))


main()
