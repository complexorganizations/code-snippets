# Count the number of times a certain element appears in a slice.
def count_element_appearance_in_slice(provided_slice, provided_element):
    return provided_slice.count(provided_element)


def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "a", "b"]
    # Count the number of times a certain element appears in the slice.
    print(count_element_appearance_in_slice(randomSlice, "a"))


main()
