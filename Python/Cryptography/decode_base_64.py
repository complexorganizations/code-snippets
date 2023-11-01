import base64


# Decode the base-64 string.
def decode_base_64(provided_string):
    return base64.b64decode(provided_string).decode()


def main():
    # Decode the base-64 string.
    print(decode_base_64("SGVsbG8gV29ybGQh"))


main()
