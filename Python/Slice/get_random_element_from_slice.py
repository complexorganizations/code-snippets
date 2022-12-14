import random


# Pick an element at random from the slice.
def get_random_element_from_slice(provided_slice):
    return random.choice(provided_slice)


def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "a", "b"]
    # Add a new element to the slice.
    print(get_random_element_from_slice(randomSlice))


main()
