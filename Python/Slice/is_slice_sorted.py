# Check if the slice is sorted.
def is_slice_sorted(provided_slice):
    return sorted(provided_slice) == provided_slice


def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "a", "b"]
    # Check if the slice is sorted.
    print(is_slice_sorted(randomSlice))


main()
