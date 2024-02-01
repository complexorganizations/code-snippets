# Add element to the slice at a certain index.
def add_element_at_index(provided_slice, index, value):
    provided_slice.insert(index, value)
    return provided_slice


def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "a", "b"]
    # Add a new element to the slice.
    print(add_element_at_index(randomSlice, 3, "d"))


main()
