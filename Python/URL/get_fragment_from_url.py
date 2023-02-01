import urllib.parse


# Get the fragment from a given url.
def get_fragment_from_url(url):
    return urllib.parse.urlparse(url).fragment


def main():
    # Get the fragment from a given url.
    print(get_fragment_from_url("https://www.example.com#fragment"))


main()
