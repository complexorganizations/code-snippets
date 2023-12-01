import urllib.parse


# Get the username from a given url.
def get_username_from_url(url):
    return urllib.parse.urlparse(url).username


def main():
    # Get the username from a given url.
    print(get_username_from_url("https://user:pass@example.com:80"))


main()
