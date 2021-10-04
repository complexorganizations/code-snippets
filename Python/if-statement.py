# Simple if statement
def if_statement():
    if 1 + 1 == 2:
        print("1 + 1 = 2")


# Simple if else statement
def if_else_statement():
    if 1 + 1 == 2:
        print("1 + 1 = 2")
    else:
        print("1 + 1 != 2")


# if else statement with multiple conditions
def if_else_multiple_conditions():
    if 1 + 1 == 2:
        print("1 + 1 = 2")
    elif 1 + 1 == 3:
        print("1 + 1 = 3")
    else:
        print("1 + 1 != 2 or 3")


# More examples of a if statement
def if_statement_examples():
    some_bool = True
    if some_bool:
        print("some_bool is True")
    else:
        print("some_bool is False")


# Using statmenet instead of syntax
def syntax_example():
    short = False
    tall = True
    male = False
    female = True
    if short and female:
        print("Its a short female")
    elif not(short) and female:
        "Its a tall female"
    elif short and not(male):
        print("Its a tall female")
    elif not(male) or not(female):
        print("Its a unknown gender")
    else:
        print("Its unknown")


def main():
    # If statement
    if_statement()
    # If else statement
    if_else_statement()
    # If else statement with multiple conditions
    if_else_multiple_conditions()
    # If statement examples
    if_statement_examples()
    # Syntax example
    syntax_example()


main()
