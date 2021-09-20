import os

def main():
    print(check_dir("Python"))

main()

# Check if a directory exists
def check_dir(dir_name):
    if os.path.exists(dir_name):
        return True
    else:
        return False