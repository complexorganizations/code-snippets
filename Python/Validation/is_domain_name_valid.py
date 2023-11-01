import validators


# Check if a given domain name is valid.
def is_domain_name_valid(provided_domain_name):
    return validators.domain(provided_domain_name)


def main():
    # Check if a given domain name is valid.
    print(is_domain_name_valid("example.com"))


main()
