#![allow(clippy::needless_return)]
fn main() {
    // Check if a given string is whitespaces only.
    println!("{}", is_string_whitespaces_only("     "));
}

// Check if a string is whitespaces only.
fn is_string_whitespaces_only(content: &str) -> bool {
    return content.trim().is_empty();
}
