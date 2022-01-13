import time


# Get days since year began.
def get_days_since_year_began():
    return time.strftime("%j")


def main():
    # Get days since year began.
    print(get_days_since_year_began())


main()
