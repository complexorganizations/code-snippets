import dns.resolver


# Check a domains AAA records.
def check_domain_aaa_records(provided_domain):
    return dns.resolver.resolve(provided_domain, "AAAA")


def main():
    # Check a domain's AAA records.
    websiteAaaaRecords = check_domain_aaa_records("example.com")
    for aaaaRecords in websiteAaaaRecords:
        print(aaaaRecords)


main()
