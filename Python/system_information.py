import http.client
import os
import platform
import shutil
import socket
import sys

import psutil


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
def get_user_external_ip():
    hostname = "checkip.amazonaws.com"
    path = "/"
    method = "GET"
    payload = ""
    encoding = "utf-8"
    headers = {}
    httpResponse = get_response(
        hostname, path, payload, headers, method, encoding)
    returnContent = httpResponse.split("\n")
    return returnContent[0]


# Check if a specfied application is installed
def is_application_installed(application):
    return shutil.which(application) != None


# Get the current user cpu time
def get_user_cpu_time():
    return psutil.cpu_times()


# Get the current system memory usage
def get_system_memory():
    return psutil.virtual_memory()


# Get the current system disk info
def get_system_disk_info():
    return psutil.disk_partitions()


# Get the current system io info
def get_system_disk_io_counters():
    return psutil.disk_io_counters()


# Get all the path in the system
def get_all_path():
    return sys.path


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
    # Get the current user external ip address
    print(get_user_external_ip())
    # Check if a specfied application is installed
    print(is_application_installed("code"))
    # Get the current user cpu time
    print(get_user_cpu_time())
    # Get the current system memory usage
    print(get_system_memory())
    # Get the current system disk info
    print(get_system_disk_info())
    #  Get the current system inode info
    print(get_system_disk_io_counters())
    # Get all the path in the system
    print(get_all_path())


main()
