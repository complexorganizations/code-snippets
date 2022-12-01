# Simple function takes no arguments and returns nothing
def simple_function():
    print("This is a simple function")


# Function with arguments and returns nothing
def simple_function_with_arguments(arg1, arg2):
    print(arg1 + arg2)


# Function that returns a value and takes no arguments
def return_value():
    return "Hello, World!"


# Function that takes arguments and returns a value
def return_value_with_arguments(arg1, arg2):
    return arg1 + arg2


# Function inside another function
def function_inside_function():
    print("This is the primary function.")

    # This is the secondary function inside the primary function
    def nested_function():
        print("This is a nested function.")

    nested_function()


def main():
    # Simple function that takes no arguments and returns nothing
    simple_function()
    # Function with arguments and returns nothing
    simple_function_with_arguments("Hello, ", "World!")
    # Function that returns a value and takes no arguments
    print(return_value())
    # Function that takes arguments and returns a value
    print(return_value_with_arguments("Hello, ", "World!"))
    # Function inside another function
    function_inside_function()


# Call the main function
main()
