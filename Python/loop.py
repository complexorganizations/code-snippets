# Loop ten times
def loop_ten_times():
    for i in range(10):
        print("Loop ten times.")


# Loop 100 times
def loop_hundred_times():
    for i in range(100):
        print("Loop one hundred times.")


# Loop over a array of numbers
def loop_over_array_of_numbers():
    numbers = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
    for number in numbers:
        print(number)


# Loop over a array of strings
def loop_over_array_of_strings():
    strings = ["apple", "banana", "cherry"]
    for string in strings:
        print(string)


# Loop over the keys in a map
def loop_over_map_keys():
    map = {"name": "john", "age": "30", "gender": "male"}
    for key in map.keys():
        print(key)


# Loop over the value in a map
def loop_over_map_values():
    map = {"city": "new york city", "state": "new york", "country": "united states of america"}
    for value in map.values():
        print(value)


# Loop over a map
def loop_over_map():
    map = {"ssn": "123-456-789", "card": "1234-5678-9101-1121", "mother": "Jane"}
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


# Loop forever
def loop_forever():
    counter = 0
    while True:
        counter = counter + 1
        print("Hello")
        if counter == 10:
            break


# More example of a while loop
def while_loop():
    counter = 0
    while counter < 10:
        counter = counter + 1
        print("World")


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
    # Loop forever
    loop_forever()
    # More example of a while loop
    while_loop()


main()
