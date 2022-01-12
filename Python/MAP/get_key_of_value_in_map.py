# Get the key of a given value in a map.
def get_key_of_value_in_map(provided_map, provided_value):
    for key, value in map.items():
        if provided_value == value:
            return key


def main():
    # Make a map using a random set of data.
    randomMap = {"a": 1, "b": 2, "c": 3}
    # Get the key of a given value in a map.
    print(get_key_of_value_in_map(1))


main()
