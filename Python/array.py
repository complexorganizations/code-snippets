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


main()
