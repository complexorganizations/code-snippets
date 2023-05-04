# Reverse the order of the key value pairs in a map.
def reverse_the_order_of_key_value_pair_in_map(provided_map):
    reversed_map = {}
    # Reverse the order of the key value pairs in a map.
    for key, value in provided_map.items():
        reversed_map[value] = key
    # Return the reversed map.
    return reversed_map


def main():
    # Make a map using a random set of data.
    randomMap = {"a": 1, "b": 2, "c": 3}
    # Get the first value in a map.
    print(reverse_the_order_of_key_value_pair_in_map(randomMap))


main()
