import time


# Get the current time and return it.
def get_current_time():
    return time.time()


# Get the current time in readable format and return it.
def get_readable_time():
    return time.ctime(time.time())


# Get the current time in local timezone.
def get_local_time():
    return time.localtime()


# Get the current year and return it.
def get_current_year():
    return time.strftime("%Y")


# Get the current month in the year.
def get_current_month():
    return time.strftime("%B")


# Get the current date in the month.
def get_current_date():
    return time.strftime("%d")


# Get days since year began.
def get_days_since_year_began():
    return time.strftime("%j")


def main():
    # Get the current time.
    print(get_current_time())
    # Get the current time in readable format.
    print(get_readable_time())
    # Get the current time in local timezone.
    print(get_local_time())
    # Get the current year.
    print(get_current_year())
    # Get the current month in the year.
    print(get_current_month())
    # Get the current date in the year.
    print(get_current_date())
    # Get days since year began.
    print(get_days_since_year_began())


main()
