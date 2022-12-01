# Add a new element to the slice.
def add_element_to_slice(provided_slice, provided_element):
    provided_slice.append(provided_element)
    return provided_slice


def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "a", "b"]
    # Add a new element to the slice.
    print(add_element_to_slice(randomSlice, "d"))


main()
