import uuid


# Get the current system MAC address
def get_current_system_mac_address():
    return ":".join(["{:02x}".format((uuid.getnode() >> i) & 0xff) for i in range(0, 8*6, 8)][::-1])


def main():
    # Get the current system MAC address
    print(get_current_system_mac_address())


main()
