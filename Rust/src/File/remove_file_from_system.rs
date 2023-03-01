#![allow(clippy::needless_return)]
use std::fs;

fn main() {
    // Remove a file from the system.
    remove_file_from_system("assets/remove/89mmtNQY7hM7389f48Sw46ZhbRDNQ2h9/README.md");
}

// Remove a file form the system.
fn remove_file_from_system(filepath: &str) {
    fs::remove_file(filepath).unwrap();
}
