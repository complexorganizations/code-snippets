# Get the last value in the given map.
def get_last_value_in_map(provided_map):
    for _, value in reversed(sorted(provided_map.items())):
        return value


def main():
    # Make a map using a random set of data.
    randomMap = {"a": 1, "b": 2, "c": 3}
    # Get the last value in a map.
    print(get_last_value_in_map(randomMap))


main()
