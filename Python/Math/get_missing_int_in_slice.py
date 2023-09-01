# Get the missing int in a slice of ints.
def get_missing_int_in_slice(given_slice):
    smallestInt = get_smallest_int_in_slice(given_slice)
    biggestInt = get_biggest_int_in_slice(given_slice)
    missingInt = []
    for tempValue in range(smallestInt, biggestInt):
        if slice_contains(given_slice, tempValue) == False:
            missingInt.append(tempValue)
    return missingInt


# Get the biggest int in a given slice.
def get_biggest_int_in_slice(given_slice):
    return max(given_slice)


# Get the smallest int in a given slice.
def get_smallest_int_in_slice(given_slice):
    return min(given_slice)


# Determine whether or not the array includes a specific element.
def slice_contains(provided_slice, provided_element):
    return provided_element in provided_slice


def main():
    # Create a slice of ints
    randomSlice = [1, 10]
    # Get the missing int in the slice.
    print(get_missing_int_in_slice(randomSlice))


main()
