import requests


# Get the encoding of the response
def get_request_encoding(provided_url):
    return requests.get(provided_url).encoding


def main():
    # Get the headers from the response
    print(get_request_encoding("https://www.example.com"))


main()
