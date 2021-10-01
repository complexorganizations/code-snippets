import socket
import uuid


# Get the current system hostname
def get_hostname():
    return socket.gethostname()


# Get the current system IP address
def get_ip_address():
    return socket.gethostbyname(socket.gethostname())


# Get the current system MAC address
def get_mac_address():
    return ':'.join(['{:02x}'.format((uuid.getnode() >> i) & 0xff) for i in range(0, 8*6, 8)][::-1])


def main():
    # Get the current system hostname
    print("Hostname: " + get_hostname())
    # Get the current system IP address
    print("IP Address: " + get_ip_address())
    # Get the current system MAC address
    print("MAC Address: " + get_mac_address())


main()
