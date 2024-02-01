# Get the last key in the given map.
def get_last_key_in_map(provided_map):
    for key, _ in reversed(sorted(provided_map.items())):
        return key


def main():
    # Make a map using a random set of data.
    randomMap = {"a": 1, "b": 2, "c": 3}
    # Get the last key in a map.
    print(get_last_key_in_map(randomMap))


main()
