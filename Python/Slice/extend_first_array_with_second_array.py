# Extend a slice array with another array.
def extend_first_array_with_second_array(firstSlice, secondSlice):
    firstSlice.extend(secondSlice)
    return firstSlice


def main():
    # Make a slice using a random set of data.
    randomSliceOne = ["a", "b", "c"]
    randomSliceTwo = ["d", "e", "f"]
    # Extend the first slice with the second slice.
    print(extend_first_array_with_second_array(randomSliceOne, randomSliceTwo))


main()
