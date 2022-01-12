# Remove a specific element from a slice.
def remove_element_from_slice(provided_slice, provided_element):
    provided_slice.remove(provided_element)
    return provided_slice


def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "a", "b"]
    # Remove a specific element from a slice.
    print(remove_element_from_slice(randomSlice, "a"))


main()
