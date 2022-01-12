# Remove all duplicate items from a given slice.
def remove_duplicates_from_slice(provided_slice):
    return list(set(provided_slice))


def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "c", "a", "a", "b", "b"]
    # Remove all duplicate items from a given slice.
    print(remove_duplicates_from_slice(randomSlice))


main()
