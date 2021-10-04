# Get the first value in the map
def get_first_value_in_map(map):
    for _, value in map.items():
        return value


# Get the last value in the map
def get_last_value_in_map(map):
    for _, value in reversed(sorted(map.items())):
        return value


# Get the first key in the map
def get_first_key_in_map(map):
    for key, _ in map.items():
        return key


# Get the last key in the map
def get_last_key_in_map(map):
    for key, _ in reversed(sorted(map.items())):
        return key


# Get the specified value in the map
def get_value_in_map(map, key):
    return map.get(key)


# Get the specified key in the map
def get_key_in_map(map, value):
    for key, val in map.items():
        if val == value:
            return key


# Add a new key-value pair to the map
def add_to_map(map, key, value):
    map[key] = value


# Remove a key-value pair from the map
def remove_from_map(map, key):
    del map[key]


# sort the map by key
def sort_map(map):
    return sorted(map.items())


def main():
    # Create a map
    my_map = {"a": 1, "b": 2, "c": 3}
    # Get the first value in the map
    print(get_first_value_in_map(my_map))
    # Get the last value in the map
    print(get_last_value_in_map(my_map))
    # Get the first key in the map
    print(get_first_key_in_map(my_map))
    # Get the last key in the map
    print(get_last_key_in_map(my_map))
    # Get the specified value in the map
    print(get_value_in_map(my_map, "b"))
    # Get the specified key in the map
    print(get_key_in_map(my_map, 2))
    # Add a new key-value pair to the map
    add_to_map(my_map, "d", 4)
    # Remove a key-value pair from the map
    remove_from_map(my_map, "d")
    # Sort the map
    print(sort_map(my_map))


main()
