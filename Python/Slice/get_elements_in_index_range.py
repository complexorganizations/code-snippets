# Get all the elements in the slice that fall inside a specific range.
def get_elements_in_index_range(provided_slice, start_index, end_index):
    return provided_slice[start_index:end_index]


def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "a", "b"]
    # Get all the elements in the slice that fall inside a specific range.
    print(get_elements_in_index_range(randomSlice, 0, 3))


main()
