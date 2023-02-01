#![allow(clippy::needless_return)]
use std::env;

fn main() {
    // Check if the current operating system is Linux
    println!("{}", is_current_operating_system_linux());
}

// Check if the current operating system is Linux and return it.
fn is_current_operating_system_linux() -> bool {
    return env::consts::OS == "linux"
}
