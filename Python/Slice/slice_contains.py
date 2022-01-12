# Determine whether or not the array includes a specific element.
def slice_contains(provided_slice, provided_element):
    return provided_element in provided_slice

def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "a", "b"]
    # Determine whether or not the array includes a specific element.
    print(slice_contains(randomSlice, "a"))

main()
