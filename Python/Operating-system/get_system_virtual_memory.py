import psutil


# Get the current system virtual memory usage
def get_system_virtual_memory():
    return psutil.virtual_memory()


def main():
    # Get the current system virtual memory usage
    print(get_system_virtual_memory())


main()
