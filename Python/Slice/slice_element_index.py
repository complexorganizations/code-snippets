# In an slice, get the index of an element.
def slice_element_index(provided_slice, provided_element):
    return provided_slice.index(provided_element)


def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "a", "b"]
    # In an slice, get the index of an element.
    print(slice_element_index(randomSlice, "c"))


main()
