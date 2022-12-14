#![allow(clippy::needless_return)]
use std::path::Path;

fn main() {
    // Check if the file exists
    println!("{}", check_file_exists("assets/valid/valid-json.json"));
}

// Check if a file exists.
fn check_file_exists(filename: &str) -> bool {
    return Path::new(filename).exists();
}
