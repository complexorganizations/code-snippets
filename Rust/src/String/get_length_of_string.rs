#![allow(clippy::needless_return)]
fn main() {
    // Get the length of a given string.
    println!("{}", get_length_of_string("Hello, World!"));
}

// Get the length of a given string.
fn get_length_of_string(content: &str) -> usize {
    return content.len()
}