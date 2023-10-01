import os


# Walk a directory and return everything.
def walkGivenDirectory(system_path):
    for root, directory, files in os.walk(system_path):
        return root, directory, files


def main():
    # Walk a directory
    print(walkGivenDirectory("assets/valid/aDT5V7223266kFX4uv9P9o7ovi6tdWhv/"))


main()
