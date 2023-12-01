import platform


# Get the current system uname information.
def get_system_uname_info():
    return platform.uname()


def main():
    # Get the current system uname information.
    print(get_system_uname_info())


main()
