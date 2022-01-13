import os



# Check if a file exists
def check_file_exists(system_path):
    return os.path.isfile(system_path)



def main():
    # Check if a file exists in system.
    print(check_file_exists("assets/valid/valid-zip.zip"))



main()
