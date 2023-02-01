import validators


# Check if a given mac address is valid.
def is_mac_address_valid(provided_mac_address):
    return validators.mac_address(provided_mac_address)


def main():
    # Check if a given mac address is valid.
    print(is_mac_address_valid("00:00:00:00:00:00"))


main()
