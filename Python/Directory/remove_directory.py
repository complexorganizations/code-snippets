import shutil

# Remove a directory.


def remove_directory(system_path):
    shutil.rmtree(system_path)


def main():
    # Remove a directory
    remove_directory("assets/remove/89mmtNQY7hM7389f48Sw46ZhbRDNQ2h9")


main()
