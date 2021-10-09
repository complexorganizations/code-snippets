import base64
import hashlib


def get_hash_algorithms():
    """Get the list of algrothims available in hashlib."""
    return hashlib.algorithms_available


def get_sha256(string):
    """Get the SHA256 of the string."""
    return hashlib.sha256(string.encode()).hexdigest()


def get_sha_3_256(string):
    """Get the SHA3-256 of the string."""
    return hashlib.sha3_256(string.encode()).hexdigest()


def get_sha512(string):
    """Get the SHA512 of the string."""
    return hashlib.sha512(string.encode()).hexdigest()


def get_sha_3_512(string):
    """Get the SHA-3-512 of the string."""
    return hashlib.sha3_512(string.encode()).hexdigest()


def get_base64(string):
    """Get the base64 of the string."""
    return base64.b64encode(string.encode()).decode()


def decode_base64(string):
    """Decode the base64 string."""
    return base64.b64decode(string.encode()).decode()


def main():
    """Run the main function."""
    # Some random text to get SHA of
    some_random_string = "Hello, My name is John Doe, I am 30 years old."
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
    # Get the base64 of the string
    print(get_base64(some_random_string))
    # Decode the base64 string
    print(decode_base64(get_base64(some_random_string)))


main()
