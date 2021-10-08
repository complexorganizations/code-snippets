function main(): void {
    var first_name = "John"
    var last_name = "Doe"
    // Check if the strings are the same
    console.log(check_two_strings_are_equal(first_name, last_name))
    // Check if the strings are not the same
    console.log(check_two_strings_are_not_equal(first_name, last_name))
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