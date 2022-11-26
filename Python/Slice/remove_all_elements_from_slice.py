# Remove all of the slice elements.
def remove_all_elements_from_slice(provided_slice):
    provided_slice.clear()
    return provided_slice


def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "a", "b"]
    # Remove all of the slice elements.
    print(remove_all_elements_from_slice(randomSlice))


main()
