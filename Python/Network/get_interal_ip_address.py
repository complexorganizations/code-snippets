import socket


# Get the current system internal IP address
def get_interal_ip_address():
    return socket.gethostbyname(socket.gethostname())


def main():
    # Get the current system internal IP address
    print(get_interal_ip_address())


main()
