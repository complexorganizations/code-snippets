# Remove element from the slice at a certain index.
def remove_element_from_slice_at_index(provided_slice, provided_index):
    provided_slice.pop(provided_index)
    return provided_slice


def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "a", "b"]
    # Remove element from the slice at a certain index.
    print(remove_element_from_slice_at_index(randomSlice, 1))


main()
