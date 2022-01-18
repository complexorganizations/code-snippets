import re


# Find and replace in a string using regex.
def find_and_replace_using_regex(provided_regex, provided_replace, provided_content):
    return re.sub(provided_regex, provided_replace, provided_content)


def main():
    # Find and replace using regex.
    print(find_and_replace_using_regex("Hello", "hello", "Hello, World!"))


main()
