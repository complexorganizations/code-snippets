import platform


# Get the current system architecture
def get_current_system_architecture():
    return platform.machine()


def main():
    # Get the current system architecture
    print(get_current_system_architecture())


main()
