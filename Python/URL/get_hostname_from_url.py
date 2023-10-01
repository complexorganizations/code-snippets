import urllib.parse


# Get the hostname from a given url.
def get_hostname_from_url(url):
    return urllib.parse.urlparse(url).hostname


def main():
    # Get the hostname from a given url.
    print(get_hostname_from_url("https://www.example.com"))


main()
