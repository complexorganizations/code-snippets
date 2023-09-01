import platform


# Get the current system processor
def get_current_system_processor():
    return platform.processor()


def main():
    # Get the current system processor
    print(get_current_system_processor())


main()
