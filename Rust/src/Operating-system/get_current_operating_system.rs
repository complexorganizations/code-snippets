#![allow(clippy::needless_return)]
use std::env;

fn main() {
    // Get the current operating system
    println!("{}", get_current_operating_system());
}

// Get the current operating system and return it.
fn get_current_operating_system() -> &'static str {
    return env::consts::OS
}
