import validators


# Validate a given url
def validate_url(given_url):
    return validators.url(given_url)


def main():
    # Check if a url is valid
    print(validate_url("https://www.example.com"))


main()
