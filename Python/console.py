# Clear the console
def clear_console():
    print("\033c")


# Take in input from the user
def get_input():
    user_input = input("Enter a number: ")
    return user_input


def main():
    # Clear the console
    clear_console()
    # Get input from the user
    user_input = get_input()
    print(user_input)


main()
