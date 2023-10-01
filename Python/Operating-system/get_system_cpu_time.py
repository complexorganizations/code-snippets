import psutil


# Get the system cpu time
def get_system_cpu_time():
    return psutil.cpu_times()


def main():
    # Get the system cpu time
    print(get_system_cpu_time())


main()
