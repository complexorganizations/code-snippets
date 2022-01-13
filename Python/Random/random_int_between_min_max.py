import random


# Generate a random int between a given range.
def random_int_between_min_max(min, max):
    return random.randint(min, max)


def main():
    # Generate a random int between 0 and 100.
    print(random_int_between_min_max(0, 100))


main()
