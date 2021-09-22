import validators


# Check if a url is valid
def is_valid_url(url):
    return validators.url(url)


# Check if a email is valid
def is_valid_email(email):
    return validators.email(email)


# Check if a domain is valid
def is_valid_domain(domain):
    return validators.domain(domain)


# Check if a ipv4 is valid
def is_valid_ipv4(ipv4):
    return validators.ipv4(ipv4)


# Check if a ipv6 is valid
def is_valid_ipv6(ipv6):
    return validators.ipv6(ipv6)


# Check if a mac address is valid
def is_valid_mac(mac):
    return validators.mac_address(mac)


# Check if a uuid is valid
def is_valid_uuid(uuid):
    return validators.uuid(uuid)


def main():
    # Check if a url is valid
    print(is_valid_url("https://www.google.com"))
    # Check if a email is valid
    print(is_valid_email("example@example.com"))
    # Check if a domain is valid
    print(is_valid_domain("example.com"))
    # Check if a ipv4 is valid
    print(is_valid_ipv4("0.0.0.0"))
    # Check if a ipv6 is valid
    print(is_valid_ipv6("0000:0000:0000:0000:0000:0000:0000:0000"))
    # Check if a mac address is valid
    print(is_valid_mac("00:00:00:00:00:00"))
    # Check if a uuid is valid
    print(is_valid_uuid("00000000-0000-0000-0000-000000000000"))


main()
