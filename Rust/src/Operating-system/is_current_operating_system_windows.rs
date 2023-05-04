#![allow(clippy::needless_return)]
use std::env;

fn main() {
    // Check if the current operating system is windows.
    println!("{}", is_current_operating_system_windows());
}

// Check if the current operating system is windows and return it.
fn is_current_operating_system_windows() -> bool {
    return env::consts::OS == "windows"
}
