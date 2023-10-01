import validators


# Check if a given ipv6 is valid.
def is_ipv6_valid(provided_ipv6):
    return validators.ipv6(provided_ipv6)


def main():
    # Check if a given ipv6 is valid.
    print(is_ipv6_valid("0000:0000:0000:0000:0000:0000:0000:0000"))


main()
