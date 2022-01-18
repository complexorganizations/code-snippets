import re



# Check if a given string cointains a given data.
def match_content_using_regex(provided_regex, provided_content):
    match = re.match(provided_regex, provided_content)
    if (match):
        return True
    return False


def main():
    # Check if a given string cointains a given data.
    print(match_content_using_regex("Hello", "Hello, World!"))


main()
