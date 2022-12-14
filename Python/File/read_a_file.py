import os


# Read a file from the system.
def read_a_file(system_path):
    with open(system_path, "r") as file:
        return file.read()


def main():
    # Read a file form the system.
    print(read_a_file("assets/valid/aDT5V7223266kFX4uv9P9o7ovi6tdWhv/README.md"))


main()
