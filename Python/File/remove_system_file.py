import os


# Remove a file from the system.
def remove_system_file(system_path):
    os.remove(system_path)


def main():
    # Remove a file from the system.
    remove_system_file("assets/remove/zVA3m3BEJ5wSe45v93Fi8788z4GoKjnW/README.md")


main()
