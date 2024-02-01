# Remove a key value pair form a map.
def remove_key_value_to_map(provided_map, provided_key):
    del provided_map[provided_key]
    return provided_map


def main():
    # Make a map using a random set of data.
    randomMap = {"a": 1, "b": 2, "c": 3}
    # Remove a key value pair from a map.
    print(remove_key_value_to_map(randomMap, "a"))


main()
