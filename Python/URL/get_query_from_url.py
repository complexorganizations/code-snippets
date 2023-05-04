import urllib.parse


# Get the query from a given url.
def get_query_from_url(url):
    return urllib.parse.urlparse(url).query


def main():
    # Get the query from a given url.
    print(get_query_from_url(
        "https://www.example.com?username=user&password=pass"))


main()
