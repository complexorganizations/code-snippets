# Find and replace in a given string
def find_and_replace_in_string(provided_string, find_string, replace_string):
    return provided_string.replace(find_string, replace_string)


def main():
    # Find and replace in a given string
    print(find_and_replace_in_string("Hello World!", "World", "Universe"))


main()
