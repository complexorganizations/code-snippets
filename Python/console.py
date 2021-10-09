"""These are code snippets for console apps."""


def clear_console():
    """Clear the console."""
    print("\033c")


def get_input(ask_string):
    """Take in input from the user."""
    return input(ask_string)


def main():
    """Run the main function."""
    # Clear the console
    clear_console()
    # Get input from the user
    # user_input = get_input("Enter a number: ")
    # print(user_input)


main()
