import dns.resolver


# Check a domains PTR records.
def check_domain_ptr_records(provided_domain):
    return dns.resolver.resolve(provided_domain, "PTR")


def main():
    # Check a domain's PTR records.
    websitePtrRecords = check_domain_ptr_records("100.25.200.34.in-addr.arpa")
    for ptrRecords in websitePtrRecords:
        print(ptrRecords)


main()
