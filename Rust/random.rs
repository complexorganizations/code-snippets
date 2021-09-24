fn main() {
    // Random number between 1 and 10
    println!("{}", random_number(1, 10));
}

// Generate a random number between two numbers
fn random_number(min: u32, max: u32) -> u32 {
    let mut rng = rand::thread_rng();
    rng.gen_range(min, max)
}
