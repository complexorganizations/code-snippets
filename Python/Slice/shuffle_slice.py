import random

# Shuffle an slice.
def shuffle_slice(provided_slice):
    random.shuffle(provided_slice)
    return provided_slice

def main():
    # Make a slice using a random set of data.
    randomSlice = ["c", "a", "b"]
    # Shuffle an slice.
    print(shuffle_slice(randomSlice))

main()
