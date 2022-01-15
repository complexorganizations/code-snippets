import dns.resolver


# Check a domain MX records.
def check_domain_mx_records(provided_domain):
    return dns.resolver.resolve(provided_domain, "MX")


def main():
    # Check a domain's MX records.
    websiteMxRecords = check_domain_mx_records("example.com")
    for mxRecords in websiteMxRecords:
        print(mxRecords)


main()
