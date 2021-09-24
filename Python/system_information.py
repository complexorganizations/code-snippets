import os
import platform
import socket
import http.client
import re


# Get the current operating system
def get_os():
    return os.name


# Get the current platform
def get_platform():
    return platform.system()


# Get the current operating system version
def get_os_version():
    return platform.version()


# Get the current system hostname
def get_hostname():
    return platform.node()


# Get the current architecture
def get_architecture():
    return platform.machine()


# Get the current processor
def get_processor():
    return platform.processor()


# Get all the interface in the system
def get_interface():
    return platform.uname()


# Get the current machine type
def get_machine_type():
    return platform.machine()


# Get the current user ip address and hostname of the system
def get_ip_address():
    hostname = socket.gethostname()
    ip_address = socket.gethostbyname(hostname)
    return ip_address


def get_response(hostname, path, payload, headers, method, encoding):
    conn = http.client.HTTPSConnection(hostname)
    conn.request(method, path, payload, headers)
    res = conn.getresponse()
    data = res.read()
    returnData = data.decode(encoding)
    return returnData


# Get the current user external ipv4 address and return it
def get_external_ipv4():
    hostname = "api.ipengine.dev"
    path = "/"
    method = "GET"
    payload = ""
    encoding = "utf-8"
    headers = {}
    httpResponse = get_response(
        hostname, path, payload, headers, method, encoding)
    return re.search("\b(?:[0-9]{1,3}\.){3}[0-9]{1,3}\b", httpResponse)


# Get the current user external ipv6 address
def get_external_ipv6():
    hostname = "api.ipengine.dev"
    path = "/"
    method = "GET"
    payload = ""
    encoding = "utf-8"
    headers = {}
    httpResponse = get_response(
        hostname, path, payload, headers, method, encoding)
    return re.search("\b(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))\b", httpResponse)


def main():
    # Get the current operating system
    print(get_os())
    # Get the current platform
    print(get_platform())
    # Get the current operating system version
    print(get_os_version())
    # Get the current system hostname
    print(get_hostname())
    # Get the current architecture
    print(get_architecture())
    # Get the current processor
    print(get_processor())
    # Get all the interface in the system
    print(get_interface())
    # Get the current machine type
    print(get_machine_type())
    # Get the current user ip address and hostname of the system
    print(get_ip_address())
    # Get the current user external ipv4 address
    print(get_external_ipv4())
    # Get the current user external ipv6 address
    print(get_external_ipv6())


main()
