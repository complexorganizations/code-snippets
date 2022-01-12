import socket


# Get the current system internal IP address
def get_interal_ip_address():
    local_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    local_socket.connect(("1.1.1.1", 443))
    return local_socket.getsockname()[0]


def main():
    # Get the current system internal IP address
    print(get_interal_ip_address())


main()
