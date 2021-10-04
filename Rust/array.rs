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
    println!("{}", count_element_in_array(&random_list_of_elements, "two"));
    // Remove all elements from the array
    println!("{:?}", remove_all_elements_from_array(&random_list_of_elements));
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

// Sort an array
fn sort_array<'a>(provided_array: &'a [&str]) -> Vec<&'a str> {
    let mut sorted_array = Vec::new();
    for i in 0..provided_array.len() {
        sorted_array.push(provided_array[i]);
    }
    sorted_array.sort();
    sorted_array
}

// Check if the array is sorted
fn is_sorted_array(provided_array: &[&str]) -> bool {
    let mut sorted_array = Vec::new();
    for i in 0..provided_array.len() {
        sorted_array.push(provided_array[i]);
    }
    sorted_array.sort();
    sorted_array == provided_array
}

// Count how many times an element appears in an array
fn count_element_in_array(provided_array: &[&str], element: &str) -> usize {
    let mut count = 0;
    for i in 0..provided_array.len() {
        if provided_array[i] == element {
            count = count + 1;
        }
    }
    count
}

// Remove all the elements from the array and return the array
fn remove_all_elements_from_array<'a>(provided_array: &'a [&str]) -> Vec<&'a str> {
    let mut empty_array = Vec::new();
    for i in 0..provided_array.len() {
        empty_array.push(provided_array[i]);
    }
    empty_array.clear();
    empty_array
}