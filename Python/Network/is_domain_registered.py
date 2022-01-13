import dns.resolver


# Validate a domain has been registered
def is_domain_registered(provided_domain):
    if dns.resolver.resolve(provided_domain):
        return True
    return False


def main():
    # Validate a domain has been registered
    print(is_domain_registered("example.com"))


main()
