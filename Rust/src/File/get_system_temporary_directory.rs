#![allow(clippy::needless_return)]
use std::env;

fn main() {
    // Get the temporary directory
    println!("{}", get_system_temporary_directory());
}

// Get the system temporary directory
fn get_system_temporary_directory() -> String {
    return env::temp_dir().display().to_string();
}
