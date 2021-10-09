function main(): void {
    var first_name: string = "John"
    var last_name: string = "Doe"
    // Check if the strings are the same
    console.log(check_two_strings_are_equal(first_name, last_name))
    // Check if the strings are not the same
    console.log(check_two_strings_are_not_equal(first_name, last_name))
    // Check if the first and second value are true
    console.log(basic_and_operator(false, true))
    // Check if the first or second value is true
    console.log(basic_or_operator(false, true))
    // A simple example of a ! operator
    console.log(basic_not_operator(true))
}

main()

// Check if two strings are the same
function check_two_strings_are_equal(first_string: string, second_string: string): boolean {
    return first_string == second_string
}

// Check if two strings are not the same
function check_two_strings_are_not_equal(first_string: string, second_string: string): boolean {
    return first_string != second_string
}

// A simple example of a && operator
function basic_and_operator(first_value: boolean, second_value: boolean): boolean {
    return first_value && second_value
}

// A simple example of a || operator
function basic_or_operator(first_value: boolean, second_value: boolean): boolean {
    return first_value || second_value
}

// A simple example of a ! operator
function basic_not_operator(value: boolean): boolean {
    return !value
}
