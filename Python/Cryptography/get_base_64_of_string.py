import base64


# Get the base-64 of the string.
def get_base_64_of_string(provided_string):
    return base64.b64encode(provided_string.encode()).decode()


def main():
    # Get the base-64 of the string.
    print(get_base_64_of_string("Hello World!"))


main()
