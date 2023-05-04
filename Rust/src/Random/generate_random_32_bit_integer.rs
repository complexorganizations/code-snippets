#![allow(clippy::needless_return)]
use rand::Rng;

fn main() {
    // Generate a random 32-bit integer
    println!("{}", generate_random_32_bit_integer());
}

// Generate a random 32 bit integer
fn generate_random_32_bit_integer() -> u32 {
    return rand::thread_rng().gen::<u32>();
}
