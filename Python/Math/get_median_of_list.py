import math


# Get the median of a list of numbers.
def get_median_of_list(provided_list):
    # Sort the list.
    provided_list.sort()
    # Get the length of the list.
    list_length = len(provided_list)
    # Get the middle index of the list.
    middle_index = list_length // 2
    # Get the middle value of the list.
    middle_value = provided_list[middle_index]
    # Check if the list length is odd.
    if list_length % 2 == 1:
        # Return the middle value.
        return middle_value
    else:
        # Get the middle value of the list.
        middle_value_2 = provided_list[middle_index - 1]
        # Return the average of the two middle values.
        return (middle_value + middle_value_2) / 2


def main():
    # Get the median of a list of numbers.
    print(get_median_of_list([1, 2, 3, 4, 5]))


main()
