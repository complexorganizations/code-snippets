#![allow(clippy::needless_return)]
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
    // Sort the array
    println!("{:?}", sort_array(&random_list_of_elements));
    // Check if the array is sorted
    println!("{}", is_sorted_array(&random_list_of_elements));
    // Count the number of elements in the array
    println!(
        "{}",
        count_element_in_array(&random_list_of_elements, "two")
    );
    // Remove all elements from the array
    println!(
        "{:?}",
        remove_all_elements_from_array(&random_list_of_elements)
    );
    // Add an element to the array
    println!(
        "{:?}",
        add_element_to_array(&random_list_of_elements, "six")
    );
    // Remove an element from the array
    println!(
        "{:?}",
        remove_element_from_array(&random_list_of_elements, "one")
    );
}

// Get the length of the array
fn length_of_array(provided_array: &[&str]) -> usize {
    return provided_array.len();
}

// Get the first element in the array
fn first_element_in_array<'a>(provided_array: &'a [&str]) -> &'a str {
    return provided_array[0];
}

// Get the last element in the array
fn last_element_in_array<'a>(provided_array: &'a [&str]) -> &'a str {
    return provided_array[provided_array.len() - 1];
}

// Check if the array is empty
fn is_empty_array(provided_array: &[&str]) -> bool {
    return provided_array.is_empty();
}

// Check if the array isnt empty
fn isnt_empty_array(provided_array: &[&str]) -> bool {
    return !provided_array.is_empty();
}

// Sort an array
fn sort_array<'a>(provided_array: &'a [&str]) -> Vec<&'a str> {
    let mut sorted_array = Vec::new();
    for i in 0..provided_array.len() {
        sorted_array.push(provided_array[i]);
    }
    sorted_array.sort();
    return sorted_array;
}

// Check if the array is sorted
fn is_sorted_array(provided_array: &[&str]) -> bool {
    let mut sorted_array = Vec::new();
    for i in 0..provided_array.len() {
        sorted_array.push(provided_array[i]);
    }
    sorted_array.sort();
    return sorted_array == provided_array;
}

// Count how many times an element appears in an array
fn count_element_in_array(provided_array: &[&str], element: &str) -> usize {
    let mut count = 0;
    for i in 0..provided_array.len() {
        if provided_array[i] == element {
            count = count + 1;
        }
    }
    return count;
}

// Remove all the elements from the array and return the array
fn remove_all_elements_from_array<'a>(provided_array: &'a [&str]) -> Vec<&'a str> {
    let mut empty_array = Vec::new();
    for i in 0..provided_array.len() {
        empty_array.push(provided_array[i]);
    }
    empty_array.clear();
    return empty_array;
}

// Add an element to an array
fn add_element_to_array<'a>(provided_array: &[&'a str], element: &'a str) -> Vec<&'a str> {
    let mut new_array = Vec::new();
    for i in 0..provided_array.len() {
        new_array.push(provided_array[i]);
    }
    new_array.push(element);
    return new_array;
}

// Remove an element from an array
fn remove_element_from_array<'a>(provided_array: &[&'a str], element: &'a str) -> Vec<&'a str> {
    let mut new_array = Vec::new();
    for i in 0..provided_array.len() {
        if provided_array[i] != element {
            new_array.push(provided_array[i]);
        }
    }
    return new_array;
}
