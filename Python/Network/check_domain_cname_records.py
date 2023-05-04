import dns.resolver


# Check a domains cname records.
def check_domain_cname_records(provided_domain):
    return dns.resolver.resolve(provided_domain, "CNAME")


def main():
    # Check a domain's cname records.
    websiteCnameRecords = check_domain_cname_records("www.amazon.com")
    for cnameRecords in websiteCnameRecords:
        print(cnameRecords)


main()
