#[allow(clippy::needless_return)]
use std::env;

fn main() {
    // Get the family of the current operating system.
    println!("{}", get_operating_system_family());
}

// Get the family of the current operating system and return it.
fn get_operating_system_family() -> &'static str {
    return env::consts::FAMILY
}
