import time


# Get the current month in the year.
def get_current_month():
    return time.strftime("%B")


def main():
    # Get the current month in the year.
    print(get_current_month())


main()
