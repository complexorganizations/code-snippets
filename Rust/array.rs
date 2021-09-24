fn main() {
    let array_value = ["one", "two", "three"];
    println!("{}", array_value[0]);
    println!("{}", array_value[1]);
    println!("{}", array_value[2]);
    // Get the length of the array
    println!("{}", get_langth(&array_value));
    // Get the first element of the array
    println!("{}", get_first_element(&array_value));
    // Get the last element of the array
    println!("{}", get_last_element(&array_value));
}

// Get the length of the array
fn get_langth(some_array: &[&str]) -> usize {
    some_array.len()
}

// Get the first element of the array
fn get_first_element(some_array: &[&str]) -> &str {
    some_array[0]
}

// Get the last element of the array
fn get_last_element(some_array: &[&str]) -> &str {
    some_array[some_array.len() - 1]
}
