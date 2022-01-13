import pathlib



# Get the file extension
def get_file_extension(system_path):
    return pathlib.Path(system_path).suffix

def main():
    # Get the file extension
    print(get_file_extension("assets/valid/valid-zip.zip"))


main()
