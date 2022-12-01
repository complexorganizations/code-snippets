# Change the value of an array element to a certain value.
def change_element_at_slice_via_element(provided_slice, provided_element, provided_value):
    provided_slice[provided_slice.index(provided_element)] = provided_value
    return provided_slice


def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "a", "b"]
    # Change the value of an array element to a certain value.
    print(change_element_at_slice_via_element(randomSlice, "a", "d"))


main()
