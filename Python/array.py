"""Import random into the program so that we may utilize it."""
import random


def is_array_empty(provided_array):
    """Ascertain that the array is empty."""
    if len(provided_array) == 0:
        return True
    return False


def sort_array(provided_array):
    """Sort the elements in an array."""
    return sorted(provided_array)


def array_contains(provided_array, provided_element):
    """Determine whether or not the array includes a specific element."""
    return provided_element in provided_array


def get_array_index(provided_array, provided_element):
    """In an array, get the index of an element."""
    return provided_array.index(provided_element)


def remove_duplicates_from_array(provided_array):
    """Remove all of the array's duplicates."""
    return list(set(provided_array))


def remove_element_from_array(provided_array, provided_element):
    """Element should be removed from the array."""
    return provided_array.remove(provided_element)


def add_element_to_array(provided_array, provided_element):
    """Add a new element to the array."""
    return provided_array.append(provided_element)


def get_random_element_from_array(array):
    """Pick an element at random from the array."""
    return array[random.randint(0, len(array) - 1)]


def shuffle_array(array):
    """Shuffle an array."""
    return random.shuffle(array)


def get_array_length(array):
    """Get the array's length."""
    return len(array)


def reverse_array(array):
    """Reverse the array's order."""
    return array.reverse()


def change_element_at_index(array, index, element):
    """Change an element's value at a certain index."""
    array[index] = element
    return array


def change_element_via_value(array, element, value):
    """Change the value of an array element to a certain value."""
    array[array.index(element)] = value
    return array


def is_array_sorted(array):
    """Check if the array is sorted."""
    for i in range(len(array) - 1):
        if array[i] > array[i + 1]:
            return False
    return True


def get_first_element(array):
    """Get the array's first element."""
    return array[0]


def get_last_element(array):
    """Get the array's last element."""
    return array[len(array) - 1]


def get_middle_element(array):
    """Get the middle element of the array."""
    return array[len(array) // 2]


def add_value_at_index(array, index, value):
    """Add value to the array at a certain index."""
    return array.insert(index, value)


def remove_value_at_index(array, index):
    """Remove value from the array at a certain index."""
    return array.pop(index)


def combine_arrays(array1, array2):
    """Combine two arrays into one."""
    return array1 + array2


def get_values_after_index(array, index):
    """After a given index, get all the values from the array."""
    return array[index:]


def get_values_in_index_range(array, start_index, end_index):
    """Get all the values in the array that fall inside a specific range."""
    return array[start_index:end_index]


def extend_array(array, array2):
    """Add another array to the array."""
    return array.extend(array2)


def count_element_appearance(array, element):
    """Count the number of times the element is present in the array."""
    return array.count(element)


def copy_array(old_array, new_array):
    """Transfer data from one array to another."""
    new_array = old_array.copy()
    return new_array


def remove_all_elements_from_array(array):
    """Remove all of the array's elements."""
    array.clear()
    return array


def main():
    """Run the main program."""
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
    print(remove_duplicates_from_array(array))
    # Remove the element from the array
    print(remove_element_from_array(array, "a"))
    # Add an element to the array
    print(add_element_to_array(array, "d"))
    # Get a random element from the array
    print(get_random_element_from_array(array))
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
    # Combine two arrays into one
    print(combine_arrays(array, ["h", "i"]))
    # Get all the values from the array after the certain index
    print(get_values_after_index(array, 2))
    # Get all the values in the array in the certain index range
    print(get_values_in_index_range(array, 1, 3))
    # Extend the array with another array
    print(extend_array(array, ["j", "j", "k"]))
    # Count how many times the element appears in the array
    print(count_element_appearance(array, "j"))
    # Copy one array to another
    print(copy_array(array, []))
    # Remove all the elements from the array
    print(remove_all_elements_from_array(array))


main()
