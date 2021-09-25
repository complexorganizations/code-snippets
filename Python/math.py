import math


# Add two numbers and return the result
def add(a, b):
    return a + b


# Subtract two numbers and return the result
def subtract(a, b):
    return a - b


# Multiply two numbers and return the result
def multiply(a, b):
    return a * b


# Divide two numbers and return the result
def divide(a, b):
    return a / b


# Modulus two numbers and return the result
def modulus(a, b):
    return a % b


# Power two numbers and return the result
def power(a, b):
    return a ** b


# Square root of a number and return the result
def square_root(a):
    return math.sqrt(a)


# Calculate the factorial of a number and return the result
def factorial(a):
    if a == 0:
        return 1
    else:
        return a * factorial(a - 1)


# Calculate the average of a list of numbers and return the result
def average(a):
    if len(a) == 0:
        return 0
    else:
        return sum(a) / len(a)


# Calculate the median of a list of numbers and return the result
def median(a):
    if len(a) == 0:
        return 0
    else:
        sorted_a = sorted(a)
        if len(sorted_a) % 2 == 0:
            return (sorted_a[int(len(sorted_a) / 2)] + sorted_a[int(len(sorted_a) / 2) - 1]) / 2
        else:
            return sorted_a[int(len(sorted_a) / 2)]


# Calculate the mode of a list of numbers and return the result
def mode(a):
    if len(a) == 0:
        return 0
    else:
        mode_dict = {}
        for i in a:
            if i in mode_dict:
                mode_dict[i] += 1
            else:
                mode_dict[i] = 1
        mode_list = []
        for i in mode_dict:
            if mode_dict[i] == max(mode_dict.values()):
                mode_list.append(i)
        return mode_list


# Calculate the standard deviation of a list of numbers and return the result
def standard_deviation(a):
    if len(a) == 0:
        return 0
    else:
        mean = average(a)
        variance = 0
        for i in a:
            variance += (i - mean) ** 2
        return variance ** 0.5


# Calculate the variance of a list of numbers and return the result
def variance(a):
    if len(a) == 0:
        return 0
    else:
        mean = average(a)
        variance = 0
        for i in a:
            variance += (i - mean) ** 2
        return variance


# Round the number to the nearest integer
def round_double(a):
    return round(a)


# Floor the number to the nearest integer
def floor_double(a):
    return math.floor(a)


# Ceil the number to the nearest integer
def ceil_double(a):
    return math.ceil(a)


# truncate the number to the nearest integer
def truncate_double(a):
    return math.trunc(a)


def main():
    # Add two numbers and return the result
    print(add(1, 2))
    # Subtract two numbers and return the result
    print(subtract(2, 1))
    # Multiply two numbers and return the result
    print(multiply(2, 2))
    # Divide two numbers and return the result
    print(divide(4, 2))
    # Modulus two numbers and return the result
    print(modulus(5, 2))
    # Power two numbers and return the result
    print(power(2, 3))
    # Square root of a number and return the result
    print(square_root(4))
    # Calculate the factorial of a number and return the result
    print(factorial(5))
    # Calculate the average of a list of numbers and return the result
    print(average([1, 2, 3, 4, 5]))
    # Calculate the median of a list of numbers and return the result
    print(median([1, 2, 3, 4, 5]))
    # Calculate the mode of a list of numbers and return the result
    print(mode([1, 2, 3, 4, 5]))
    # Calculate the standard deviation of a list of numbers and return the result
    print(standard_deviation([1, 2, 3, 4, 5]))
    # Calculate the variance of a list of numbers and return the result
    print(variance([1, 2, 3, 4, 5]))
    # Round the number to the nearest integer
    print(round_double(3.14))
    # Floor the number to the nearest integer
    print(floor_double(3.14))
    # Ceil the number to the nearest integer
    print(ceil_double(3.14))
    # truncate the number to the nearest integer
    print(truncate_double(3.14))


main()
