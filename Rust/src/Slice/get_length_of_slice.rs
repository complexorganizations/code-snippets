fn main() {
    // Create a slice of random elements.
    let random_list_of_elements = ["one", "two", "three", "four", "five"];
    // Get the length of the slice.
    println!("{}", get_length_of_slice(&random_list_of_elements));
}

// Get the length of a given slice.
fn get_length_of_slice(provided_slice: &[&str]) -> usize {
    return provided_slice.len();
}
