import random


# Generate a random float for a given range.
def random_float_between_min_max(min, max):
    return random.uniform(min, max)


def main():
    # Generate a random float for a given range.
    print(random_float_between_min_max(0, 100))


main()
