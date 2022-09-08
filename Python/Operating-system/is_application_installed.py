import shutil


# Check if a specfied application is installed
def is_application_installed(application):
    return shutil.which(application) != None


def main():
    # Check if a specfied application is installed
    print(is_application_installed("python"))


main()
