import random


# Generate a random slice of a given length.
def generate_random_slice_of_length(length):
    return random.sample(range(0, 1000), length)


def main():
    # Generate a random slice of a given length.
    print(generate_random_slice_of_length(10))


main()
