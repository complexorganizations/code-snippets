# Sort a provided map.
def sort_a_map(provided_map):
    return sorted(provided_map.items())


def main():
    # Make a map using a random set of data.
    randomMap = {"a": 1, "b": 2, "c": 3}
    # Sort a map.
    print(sort_a_map(randomMap))


main()
