import urllib.parse


# Get the password from a given url.
def get_password_from_url(url):
    return urllib.parse.urlparse(url).password


def main():
    # Get the password from a given url.
    print(get_password_from_url("https://user:pass@example.com:80"))


main()
