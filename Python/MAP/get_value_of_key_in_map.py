# Get the value of a given key in a map.
def get_value_of_key_in_map(provided_map, provided_key):
    return provided_map.get(provided_key)


def main():
    # Make a map using a random set of data.
    randomMap = {"a": 1, "b": 2, "c": 3}
    # Get the value of a given key in a map.
    print(get_value_of_key_in_map(randomMap, "a"))


main()
