# Check if two values are equal
def check_equality(first_value, second_value):
    if first_value == second_value:
        return True
    else:
        return False


# Check if two values are not equal
def check_inequality(first_value, second_value):
    if first_value != second_value:
        return True
    else:
        return False


# Check if first value is less than second value
def check_less_than(first_value, second_value):
    if first_value < second_value:
        return True
    else:
        return False


# Check if the first value is more than the first value
def check_greater_than(first_value, second_value):
    if second_value > first_value:
        return True
    else:
        return False


# Check if the first value is less than or equal to the second value
def check_less_than_or_equal_to(first_value, second_value):
    if first_value <= second_value:
        return True
    else:
        return False


# Check if the first value is more than or equal to the first value
def check_greater_than_or_equal_to(first_value, second_value):
    if second_value >= first_value:
        return True
    else:
        return False


def main():
    first_number = 10
    second_number = 20
    # == Operator compares two values and returns True if they are equal
    print(check_equality(first_number, second_number))
    # != Operator compares two values and returns True if they are not equal
    print(check_inequality(first_number, second_number))
    # < Operator compares two values and returns True if the first value is less than the second value
    print(check_less_than(first_number, second_number))
    # > Operator compares two values and returns True if the first value is greater than the second value
    print(check_greater_than(first_number, second_number))
    # <= Operator compares two values and returns True if the first value is less than or equal to the second value
    print(check_less_than_or_equal_to(first_number, second_number))
    # >= Operator compares two values and returns True if the first value is greater than or equal to the second value
    print(check_greater_than_or_equal_to(first_number, second_number))


main()
