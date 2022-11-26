#![allow(clippy::needless_return)]
use std::env;

fn main() {
    // Get the current build path.
    println!("{}", get_current_build_path());
}

// Get the current build path in system
fn get_current_build_path() -> String {
    return env::current_exe().unwrap().display().to_string();
}
