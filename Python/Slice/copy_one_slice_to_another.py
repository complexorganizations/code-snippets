# Copy all the elements form a slice to another slice.
def copy_first_slice_to_second(firstSlice, secondSlice):
    secondSlice = firstSlice.copy()
    return secondSlice


def main():
    # Make a slice using a random set of data.
    randomSliceOne = ["a", "b", "c"]
    randomSliceTwo = ["d", "e", "f"]
    # Copy all the elements form a slice to another slice.
    print(copy_first_slice_to_second(randomSliceOne, randomSliceTwo))


main()
