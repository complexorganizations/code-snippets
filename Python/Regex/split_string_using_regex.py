import re



# Split a string using regex.
def split_string_using_regex(provided_regex, provided_content):
    return re.split(provided_regex, provided_content)



def main():
    # Split a string using regex.
    print(split_string_using_regex(",", "Hello, World!"))


main()
