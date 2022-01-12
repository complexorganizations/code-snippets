import random
import string



# Generate a random string of a given length
def random_string_of_given_length(length):
    return "".join(random.choice(string.ascii_uppercase + string.ascii_lowercase + string.ascii_letters + string.digits + string.punctuation) for i in range(length))


def main():
    # Generate a random string of length
    print(random_string_of_given_length(10))


main()
