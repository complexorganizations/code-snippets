import psutil


# Get the current system disk partitions
def get_system_disk_partitions():
    return psutil.disk_partitions()


def main():
    # Get the current system disk partitions
    print(get_system_disk_partitions())


main()
