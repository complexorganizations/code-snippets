import dns.resolver


# Check a domains A records.
def check_domain_a_records(provided_domain):
    return dns.resolver.resolve(provided_domain, "A")


def main():
    # Check a domain's A records.
    websiteARecords = check_domain_a_records("www.amazon.com")
    for aRecords in websiteARecords:
        print(aRecords)


main()
