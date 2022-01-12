# Reverse the slice order.
def reverse_slice(provided_slice):
    provided_slice.reverse()
    return provided_slice


def main():
    # Make a slice using a random set of data.
    randomSlice = ["a", "b", "c"]
    # Reverse the slice order.
    print(reverse_slice(randomSlice))


main()
