import os
import platform


# Get the current operating system
def get_os():
    return os.name


# Get the current platform
def get_platform():
    return platform.system()


# Get the current operating system version
def get_os_version():
    return platform.version()


# Get the current system hostname
def get_hostname():
    return platform.node()


# Get the current architecture
def get_architecture():
    return platform.machine()


# Get the current processor
def get_processor():
    return platform.processor()


# Get all the interface in the system
def get_interface():
    return platform.uname()


# Get the current machine type
def get_machine_type():
    return platform.machine()


def main():
    # Get the current operating system
    print(get_os())
    # Get the current platform
    print(get_platform())
    # Get the current operating system version
    print(get_os_version())
    # Get the current system hostname
    print(get_hostname())
    # Get the current architecture
    print(get_architecture())
    # Get the current processor
    print(get_processor())
    # Get all the interface in the system
    print(get_interface())
    # Get the current machine type
    print(get_machine_type())


main()
