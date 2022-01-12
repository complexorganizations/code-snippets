# Add a key value pair to a map.
def add_key_value_to_map(provided_map, provided_key, provided_value):
    provided_map[provided_key] = provided_value
    return provided_map


def main():
    # Make a map using a random set of data.
    randomMap = {"a": 1, "b": 2, "c": 3}
    # Add a key value pair to a map.
    print(add_key_value_to_map(randomMap, "d", 4))

main()
