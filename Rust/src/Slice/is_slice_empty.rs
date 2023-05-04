fn main() {
    // Create a slice of random elements.
    let random_list_of_elements = ["one", "two", "three", "four", "five"];
    // Check if the slice is empty.
    println!("{}", is_slice_empty(&random_list_of_elements));
}


// Check if a given slice is empty.
fn is_slice_empty(provided_slice: &[&str]) -> bool {
    return provided_slice.is_empty();
}
