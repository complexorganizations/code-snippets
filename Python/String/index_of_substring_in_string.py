# Get the index of a sub string in a given string.
def index_of_substring_in_string(provided_string, sub_string):
    return provided_string.find(sub_string)


def main():
    # Get the index of a sub string in a given string.
    print(index_of_substring_in_string("Hello World!", "World"))


main()
