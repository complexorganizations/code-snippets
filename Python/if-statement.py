def main():
    if_statement()
    if_else_statement()
    if_else_multiple_conditions()


main()

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
