use rand::Rng;

fn main() {
    // Generate a random boolean
    println!("{}", random_boolean());
    // Random u8
    println!("{}", random_eight_bit_integer());
}

// Generate a random boolean
fn random_boolean() -> bool {
    rand::thread_rng().gen::<bool>()
}

// Generate a random 8 bit integer
fn random_eight_bit_integer() -> u8 {
    rand::thread_rng().gen::<u8>()
}
