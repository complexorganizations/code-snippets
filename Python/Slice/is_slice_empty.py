# Check if a given slice is empty.
def is_slice_empty(provided_slice):
    return len(provided_slice) == 0

def main():
    randomSlice = ["c", "a", "b"]
    # Check if the slice is empty
    print(is_slice_empty(randomSlice))
    
main()
