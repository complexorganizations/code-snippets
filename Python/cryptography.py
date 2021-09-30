import hashlib


# Get the list of algrothims available in hashlib
def get_hash_algorithms():
    return hashlib.algorithms_available


# Get the SHA256 of the string
def get_sha256(string):
    return hashlib.sha256(string.encode()).hexdigest()

# Get the SHA3-256 of the string
def get_sha_3_256(string):
    return hashlib.sha3_256(string.encode()).hexdigest()


# Get the SHA512 of the string
def get_sha512(string):
    return hashlib.sha512(string.encode()).hexdigest()

# Get the SHA-3-512 of the string
def get_sha_3_512(string):
    return hashlib.sha3_512(string.encode()).hexdigest()


# Get the SHA1 of the string
def get_sha1(string):
    return hashlib.sha1(string.encode()).hexdigest()


def main():
    # Some random text to get SHA of
    some_random_string = "Hello, My name is John Doe, I am 30 years old, and i live in NYC."
    # Get the list of algrothims available in hashlib
    print(get_hash_algorithms())
    # Get the SHA256 of the string
    print(get_sha256(some_random_string))
    # Get the SHA-3-256 of the string
    print(get_sha_3_256(some_random_string))
    # Get the SHA512 of the string
    print(get_sha512(some_random_string))
    # Get the SHA-3-512 of the string
    print(get_sha_3_512(some_random_string))
    # Get the SHA1 of the string
    print(get_sha1(some_random_string))


main()
