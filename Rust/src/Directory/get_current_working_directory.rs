#![allow(clippy::needless_return)]
use std::env;

fn main() {
    // Get the current working directory.
    println!("{}", get_current_working_directory());
}

// Get the current working directory and return it as a String
fn get_current_working_directory() -> String {
    return env::current_dir().unwrap().display().to_string();
}
