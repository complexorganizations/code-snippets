import random


# Check if the array is empty
def is_array_empty(array):
    if len(array) == 0:
        return True
    else:
        return False


# Sort an array and return the values
def sort_array(array):
    return sorted(array)


# Get the length of the array
def get_array_length(array):
    return len(array)


# Check if the array contains the element
def array_contains(array, element):
    if element in array:
        return True
    else:
        return False


# Get the index of the element
def get_array_index(array, element):
    return array.index(element)


# Remove all the duplicates from the array
def remove_duplicates(array):
    return list(set(array))


# Remove the element from the array
def remove_element(array, element):
    array.remove(element)
    return array


# Add an element to the array
def add_element(array, element):
    array.append(element)
    return array


# Get a random element from the array
def get_random_element(array):
    return array[random.randint(0, len(array) - 1)]


# Suffle the array
def shuffle_array(array):
    random.shuffle(array)
    return array


# Get the length of the array
def get_array_length(array):
    return len(array)


# Reverse the array
def reverse_array(array):
    return array[::-1]


# Change the value of a element at the certain index
def change_element_at_index(array, index, element):
    array[index] = element
    return array


# Change the value of a element in the array to a certain value
def change_element_via_value(array, element, value):
    array[array.index(element)] = value
    return array


# Check if the array is sorted
def is_array_sorted(array):
    for i in range(len(array) - 1):
        if array[i] > array[i + 1]:
            return False
    return True


# Get the first element of the array
def get_first_element(array):
    return array[0]


# Get the last element of the array
def get_last_element(array):
    return array[len(array) - 1]


# Get the middle element of the array
def get_middle_element(array):
    return array[len(array) // 2]


# Add value to the array at a certain index
def add_value_at_index(array, index, value):
    array.insert(index, value)
    return array


# Remove value from the array at a certain index
def remove_value_at_index(array, index):
    array.pop(index)
    return array


# Remove all the elements from the array
def remove_all_elements(array):
    array.clear()
    return array


# Combine two arrays into one
def combine_arrays(array1, array2):
    return array1 + array2


def main():
    array = ["c", "a", "b"]
    # Check if the array is empty
    print(is_array_empty(array))
    # Sort an array
    print(sort_array(array))
    # Get the length of the array
    print(get_array_length(array))
    # Check if the array contains the element
    print(array_contains(array, "a"))
    # Get the index of the element
    print(get_array_index(array, "b"))
    # Remove all the duplicates from the array
    print(remove_duplicates(array))
    # Remove the element from the array
    print(remove_element(array, "a"))
    # Add an element to the array
    print(add_element(array, "d"))
    # Get a random element from the array
    print(get_random_element(array))
    # Suffle the array
    print(shuffle_array(array))
    # Get the length of the array
    print(get_array_length(array))
    # Reverse the array
    print(reverse_array(array))
    # Change the value of a element at the certain index
    print(change_element_at_index(array, 1, "e"))
    # Change the value of a element in the array
    print(change_element_via_value(array, "e", "f"))
    # Check if the array is sorted
    print(is_array_sorted(array))
    # Get the first element of the array
    print(get_first_element(array))
    # Get the last element of the array
    print(get_last_element(array))
    # Get the middle element of the array
    print(get_middle_element(array))
    # Add value to the array at a certain index
    print(add_value_at_index(array, 1, "g"))
    # Remove value from the array at a certain index
    print(remove_value_at_index(array, 1))
    # Remove all the elements from the array
    print(remove_all_elements(array))
    # Combine two arrays into one
    print(combine_arrays(array, ["h", "i"]))


main()
