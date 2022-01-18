#[allow(clippy::needless_return)]
use rand::Rng;

fn main() {
    // Generate a random bool.
    println!("{}", generate_random_boolean());
}

// Generate a random boolean.
fn generate_random_boolean() -> bool {
    return rand::thread_rng().gen::<bool>();
}
