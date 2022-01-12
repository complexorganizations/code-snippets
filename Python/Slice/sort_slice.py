# Sort a given slice and return the slice.
def sort_slice(provided_slice):
    return sorted(provided_slice)

def main():
    # Create a slice with random elements.
    randomSlice = ["c", "a", "b"]
    # Sort the given slice.
    print(sort_slice(randomSlice))
    
main()
