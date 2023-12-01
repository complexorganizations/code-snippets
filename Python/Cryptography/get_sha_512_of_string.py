import hashlib


# Get the sha-512 of the string.
def get_sha_512_of_string(provided_string):
    return hashlib.sha512(provided_string.encode()).hexdigest()


def main():
    # Get the sha-512 of the string.
    print(get_sha_512_of_string("Hello World!"))


main()
