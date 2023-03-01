import urllib.parse


# Get the scheme from a given url.
def get_scheme_from_url(url):
    return urllib.parse.urlparse(url).scheme


def main():
    # Get the hostname from a given url.
    print(get_scheme_from_url("https://www.example.com"))


main()
