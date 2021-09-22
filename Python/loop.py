# Loop ten times
def loop_ten_times():
    for i in range(10):
        print(i)


# Loop 100 times
def loop_hundred_times():
    for i in range(100):
        print(i)


# Loop over a array of numbers
def loop_over_array_of_numbers():
    numbers = [2, 1, 4, 5, 7, 6, 8, 9, 10, 0]
    for number in numbers:
        print(number)


# Loop over a array of strings
def loop_over_array_of_strings():
    strings = ["apple", "banana", "cherry"]
    for string in strings:
        print(string)


# Loop over the keys in a map
def loop_over_map_keys():
    map = {"key1": "value1", "key2": "value2", "key3": "value3"}
    for key in map:
        print(key)


# Loop over the value in a map
def loop_over_map_values():
    map = {"key1": "value1", "key2": "value2", "key3": "value3"}
    for value in map.values():
        print(value)


# Loop over a map
def loop_over_map():
    map = {"key1": "value1", "key2": "value2", "key3": "value3"}
    for key, value in map.items():
        print(key, value)


# Break out of a loop
def break_out_of_loop():
    for i in range(10):
        print(i)
        if i == 2:
            break


# Continue in a loop
def continue_in_loop():
    for i in range(10):
        if i == 8:
            continue
        print(i)


def main():
    # Loop ten times
    loop_ten_times()
    # Loop 100 times
    loop_hundred_times()
    # Loop over a array of numbers
    loop_over_array_of_numbers()
    # Loop over a array of strings
    loop_over_array_of_strings()
    # Loop over the keys in a map
    loop_over_map_keys()
    # Loop over the value in a map
    loop_over_map_values()
    # Loop over a map
    loop_over_map()
    # Break out of a loop
    break_out_of_loop()
    # Continue in a loop
    continue_in_loop()


main()
