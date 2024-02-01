import requests


# Get the headers from the response
def get_request_headers(provided_url):
    return requests.get(provided_url).headers


def main():
    # Get the headers from the response
    print(get_request_headers("https://www.example.com"))


main()
