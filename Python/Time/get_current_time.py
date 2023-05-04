import time


# Get the current time and return it.
def get_current_time():
    return time.ctime(time.time())


def main():
    # Get the current time.
    print(get_current_time())


main()
