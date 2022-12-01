# Get all the elements after the index in the slice.
def get_elemenets_after_index_in_slice(provided_slice, index):
    return provided_slice[index:]


def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "a", "b"]
    # Get the elements after the index in the slice.
    print(get_elemenets_after_index_in_slice(randomSlice, 1))


main()
