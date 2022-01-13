import os


# Get all the directory in a given directory.
def get_all_directory_in_directory(system_path):
    return [f for f in os.listdir(system_path) if os.path.isdir(os.path.join(system_path, f))]
  

def main():
    # Get all the directory in a given directory
    print(get_all_directory_in_directory("assets/valid/aDT5V7223266kFX4uv9P9o7ovi6tdWhv"))

main()
