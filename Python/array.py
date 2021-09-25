import random


# Check if the array is empty
def is_array_empty(array):
    if len(array) == 0:
        return True
    else:
        return False


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


# Remove all the elements from the array
def remove_all_elements(array):
    array.clear()
    return array


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
def change_element(array, index, element):
    array[index] = element
    return array


# Change the value of a element in the array to a certain value
def change_element(array, element, value):
    array[array.index(element)] = value
    return array

def main():
    array = ["a", "b", "c"]
    # Check if the array is empty
    print(is_array_empty(array))
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
    # Remove all the elements from the array
    print(remove_all_elements(array))
    # Suffle the array
    print(shuffle_array(array))
    # Get the length of the array
    print(get_array_length(array))
    # Reverse the array
    print(reverse_array(array))
    # Change the value of a element at the certain index
    print(change_element(array, 1, "e"))
    # Change the value of a element in the array
    print(change_element(array, "a", "f"))



main()
