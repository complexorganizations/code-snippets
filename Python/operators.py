def main():
    first_number = 10
    second_number = 20
    # == Operator compares two values and returns True if they are equal
    if first_number == second_number:
        print("The numbers are equal")
    # != Operator compares two values and returns True if they are not equal
    if first_number != second_number:
        print("The numbers are not equal")
    # < Operator compares two values and returns True if the first value is less than the second value
    if first_number < second_number:
        print("The first number is less than the second number")
    # > Operator compares two values and returns True if the first value is greater than the second value
    if first_number > second_number:
        print("The first number is greater than the second number")
    # <= Operator compares two values and returns True if the first value is less than or equal to the second value
    if first_number <= second_number:
        print("The first number is less than or equal to the second number")
    # >= Operator compares two values and returns True if the first value is greater than or equal to the second value
    if first_number >= second_number:
        print("The first number is greater than or equal to the second number")
    # and Operator returns True if both values are True
    if first_number > 10 and second_number > 10:
        print("Both numbers are greater than 10")
    # or Operator returns True if either value is True
    if first_number > 10 or second_number > 10:
        print("One of the numbers is greater than 10")
    # not Operator returns True if the value is False
    if not first_number > 10:
        print("The first number is not greater than 10")
    # in Operator returns True if the value is in the list
    if first_number in [10, 20, 30]:
        print("The first number is in the list")
    # not in Operator returns True if the value is not in the list
    if first_number not in [10, 20, 30]:
        print("The first number is not in the list")
    # is Operator returns True if the two variables are the same object
    if first_number is second_number:
        print("The first number is the same as the second number")
    # is not Operator returns True if the two variables are not the same object
    if first_number is not second_number:
        print("The first number is not the same as the second number")

main()