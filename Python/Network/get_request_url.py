import requests


# Get the rquest url from the response
def get_request_url(provided_url):
    return requests.get(provided_url).url


def main():
    # Get the headers from the response
    print(get_request_url("https://www.example.com"))


main()
