# Get the length of a string
def get_variable_length(input_string):
    return len(input_string)


# Get the content of a variable at a certain index.
def get_variable_content(input_string, index):
    return input_string[index]


# Get the index value of a character in a string
def get_index_of_character(input_string, character):
    return input_string.index(character)


# Turn a int into a string
def int_to_string(input_int):
    return str(input_int)


# Turn a string into a int
def string_to_int(input_string):
    return int(input_string)


def main():
    some_input = "John Doe"
    # Get the length of a varaible
    print(get_variable_length(some_input))
    # Get the content of a variable at a certain index
    print(get_variable_content(some_input, 0))
    # Get the index value of a character in a string
    print(get_index_of_character(some_input, "D"))
    # Turn a int into a string
    print(int_to_string(123))
    # Turn a string into a int
    print(string_to_int("123"))


main()
