import psutil


# Get the system disk io counters
def get_system_disk_io_counters():
    return psutil.disk_io_counters()


def main():
    # Get the system disk io counters
    print(get_system_disk_io_counters())


main()
