import hashlib


# Get the sha-3-256 of the string.
def get_sha_3_256_of_string(provided_string):
    return hashlib.sha3_256(provided_string.encode()).hexdigest()


def main():
    # Get the sha-3-256 of the string.
    print(get_sha_3_256_of_string("Hello World!"))


main()
