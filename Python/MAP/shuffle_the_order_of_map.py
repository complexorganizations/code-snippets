import random


# Shuffle the order of the key value pairs in a map.
def shuffle_the_order_of_map(provided_map):
    shuffled_map = provided_map.copy()
    # Shuffle the order of the key value pairs in a map.
    shuffled_map = dict(random.sample(shuffled_map.items(), len(shuffled_map)))
    # Return the shuffled map.
    return shuffled_map


def main():
    # Make a map using a random set of data.
    randomMap = {"a": 1, "b": 2, "c": 3}
    # Get the first value in a map.
    print(shuffle_the_order_of_map(randomMap))


main()
