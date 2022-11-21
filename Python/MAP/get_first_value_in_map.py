# Get the first value in a map.
def get_first_value_in_map(provided_map):
    for _, value in provided_map.items():
        return value


def main():
    # Make a map using a random set of data.
    randomMap = {"a": 1, "b": 2, "c": 3}
    # Get the first value in a map.
    print(get_first_value_in_map(randomMap))


main()
