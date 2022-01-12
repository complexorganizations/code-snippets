import socket


# Get the current system hostname
def get_system_hostname():
    return socket.gethostname()


def main():
    # Get the current system hostname
    print get_system_hostname()


main()
