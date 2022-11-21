import validators


# Check if a given ipv4 is valid.
def is_ipv4_valid(provided_ipv4):
    return validators.ipv4(provided_ipv4)


def main():
    # Check if a given ipv4 is valid.
    print(is_ipv4_valid("0.0.0.0"))


main()
