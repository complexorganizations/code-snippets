# Combine two slices into one.
def combine_two_slices(sliceOne, sliceTwo):
    return sliceOne + sliceTwo


def main():
    # Make a slice using a random set of data.
    randomSliceOne = ["a", "b", "c"]
    randomSliceTwo = ["d", "e", "f"]
    # Combine two slices into one.
    print(combine_two_slices(randomSliceOne, randomSliceTwo))


main()
