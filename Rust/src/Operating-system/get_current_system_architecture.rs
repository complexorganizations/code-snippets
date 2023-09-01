#![allow(clippy::needless_return)]
use std::env;

fn main() {
    // Get the current operating system architecture
    println!("{}", get_current_system_architecture());
}

// Get the arch of the current operating system.
fn get_current_system_architecture() -> &'static str {
    return env::consts::ARCH
}
