fn main() {
    let random_list_of_elements = ["one", "two", "three", "four", "five"];
    // Get the length of the array
    println!("{}", length_of_array(&random_list_of_elements));
    // Get the first element of the array
    println!("{}", first_element_in_array(&random_list_of_elements));
    // Get the last element of the array
    println!("{}", last_element_in_array(&random_list_of_elements));
    // Check if the array is empty
    println!("{}", is_empty_array(&random_list_of_elements));
    // Check if the array is not empty
    println!("{}", isnt_empty_array(&random_list_of_elements));
}

// Get the length of the array
fn length_of_array(provided_array: &[&str]) -> usize {
    provided_array.len()
}

// Get the first element in the array
fn first_element_in_array<'a>(provided_array: &'a [&str]) -> &'a str {
    provided_array[0]
}

// Get the last element in the array
fn last_element_in_array<'a>(provided_array: &'a [&str]) -> &'a str {
    provided_array[provided_array.len() - 1]
}

// Check if the array is empty
fn is_empty_array(provided_array: &[&str]) -> bool {
    provided_array.is_empty()
}

// Check if the array isnt empty
fn isnt_empty_array(provided_array: &[&str]) -> bool {
    !provided_array.is_empty()
}
