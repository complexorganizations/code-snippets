fn main() {
    let random_list_of_elements = ["one", "two", "three"];
    // Get the length of the array
    println!("{}", length_of_array(&random_list_of_elements));
}

// Get the length of the array
fn length_of_array(provided_array: &[&str]) -> usize {
    provided_array.len()
}
