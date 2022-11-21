import dns.resolver


# Check the domains txt records.
def check_domain_txt_records(provided_domain):
    return dns.resolver.resolve(provided_domain, "TXT")


def main():
    # Check a domain's txt records.
    websiteTxtRecords = check_domain_txt_records("example.com")
    for txtRecords in websiteTxtRecords:
        print(txtRecords)


main()
