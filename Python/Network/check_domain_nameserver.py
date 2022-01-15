import dns.resolver


# Check a domain's name servers.
def check_domain_nameserver(provided_domain):
    return dns.resolver.resolve(provided_domain, "NS")


def main():
    # Check a domain's name servers.
    websiteNameServers = check_domain_nameserver("example.com")
    for nameservers in websiteNameServers:
        print(nameservers)


main()
