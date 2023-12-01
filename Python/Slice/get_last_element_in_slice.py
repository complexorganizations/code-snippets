# Get the last element in the slice.
def get_last_element_in_slice(provided_slice):
    return provided_slice[-1]


def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "a", "b"]
    # Get the last element in the slice.
    print(get_last_element_in_slice(randomSlice))


main()
