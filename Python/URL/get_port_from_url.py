import urllib.parse


# Get the port from a given url.
def get_port_from_url(url):
    return urllib.parse.urlparse(url).port


def main():
    # Get the port from a given url.
    print(get_port_from_url("https://www.example.com:80"))


main()