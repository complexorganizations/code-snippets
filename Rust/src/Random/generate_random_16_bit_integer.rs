#[allow(clippy::needless_return)]
use rand::Rng;

fn main() {
    // Generate a random 16-bit integer
    println!("{}", generate_random_16_bit_integer());
}

// Generate a random 16 bit integer
fn generate_random_16_bit_integer() -> u16 {
    return rand::thread_rng().gen::<u16>();
}
