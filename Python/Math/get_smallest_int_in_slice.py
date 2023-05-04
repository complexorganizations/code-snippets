# Get the smallest int in a given slice.
def get_smallest_int_in_slice(given_slice):
    return min(given_slice)


def main():
    # Create a slice of ints from 1 to 10.
    randomSlice = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    # Get the smallest int in the slice.
    print(get_smallest_int_in_slice(randomSlice))


main()
