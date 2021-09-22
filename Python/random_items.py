import random
import string


# Generate a random string of a given length and return it.
def random_string(length):
    return random.choice(string.ascii_uppercase + string.digits)


# Generate a random int for a given range.
def random_int(min, max):
    return random.randint(min, max)


# Generate a random float for a given range.
def random_float(min, max):
    return random.uniform(min, max)


# Generate a random boolean.
def random_boolean():
    return random.choice([True, False])


# Generate a random list of a given length.
def random_list(length):
    return [random_string(10) for i in range(length)]


# Generate a random tuple of a given length.
def random_tuple(length):
    return tuple(random_list(length))


# Generate a random set of a given length.
def random_set(length):
    return set(random_list(length))


# Generate a random dictionary of a given length.
def random_dict(length):
    return {random_string(10): random_string(10) for i in range(length)}


def main():
    # Generate a random string of length 10.
    print(random_string(10))
    # Generate a random int between 0 and 100.
    print(random_int(0, 100))
    # Generate a random float between 0 and 100.
    print(random_float(0, 100))
    # Generate a random boolean.
    print(random_boolean())
    # Generate a random list of length 10.
    print(random_list(10))
    # Generate a random tuple of length 10.
    print(random_tuple(10))
    # Generate a random set of length 10.
    print(random_set(10))
    # Generate a random dictionary of length 10.
    print(random_dict(10))


main()
