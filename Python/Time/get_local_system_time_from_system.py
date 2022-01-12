import time


# Get the current time in local system timezone.
def get_local_system_time_from_system():
    return time.localtime()


def main():
  # Get the current time in local system timezone.
  print(get_local_system_time_from_system())


main()
