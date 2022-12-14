# Get the slice length.
def get_slice_length(provided_slice):
    return len(provided_slice)


def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "a", "b"]
    # Get the slice length.
    print(get_slice_length(randomSlice))


main()
