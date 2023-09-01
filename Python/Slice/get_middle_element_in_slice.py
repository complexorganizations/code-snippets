# Get the middle element of the slice.
def get_middle_element_in_slice(provided_slice):
    return provided_slice[int(len(provided_slice) / 2)]


def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "c", "a", "a", "b", "b"]
    # Get the middle element of the slice.
    print(get_middle_element_in_slice(randomSlice))


main()
