import hashlib


# Get the SHA256 of the string.
def get_sha_256_of_string(provided_string):
    return hashlib.sha256(provided_string.encode()).hexdigest()


def main():
    # Get the SHA256 of the string.
    print(get_sha_256_of_string("Hello World!"))


main()
