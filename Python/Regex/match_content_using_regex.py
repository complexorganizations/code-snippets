import re



# Check if a given string cointains a given data.
def match_content_using_regex(provided_regex, provided_content):
    return bool(re.match(provided_regex, provided_content))


def main():
    # Check if a given string cointains a given data.
    print(match_content_using_regex("Hello", "Hello, World!"))


main()
