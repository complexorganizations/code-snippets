# Ascertain that the array is empty.
def is_slice_empty(provided_slice):
    return len(provided_slice) == 0

def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "a", "b"]
    # Ascertain that the array is empty.
    print(is_slice_empty(randomSlice))

main()
