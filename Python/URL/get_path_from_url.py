import urllib.parse


# Get the path from a given url.
def get_path_from_url(url):
    return urllib.parse.urlparse(url).path


def main():
    # Get the path from a given url.
    print(get_path_from_url("https://www.example.com/example.html"))


main()