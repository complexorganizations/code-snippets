fn main() {
    // Random number between 1 and 10
    println!("{}", random_number(1, 10));
    // Get a random string of length 10
    println!("{}", random_string(10));
    // Get a random boolean
    println!("{}", random_bool());
}

// Generate a random number between two numbers
fn random_number(min: u32, max: u32) -> u32 {
    let mut rng = rand::thread_rng();
    rng.gen_range(min, max)
}

// Generate a random string of a given length
fn random_string(length: u32) -> String {
    let mut rng = rand::thread_rng();
    let mut some_random_string = String::new();
    for _ in 0..length {
        some_random_string.push(rng.gen_range(b'a', b'z') as char);
    }
    some_random_string
}

// Generate a random boolean
fn random_bool() -> bool {
    let mut rng = rand::thread_rng();
    rng.gen()
}
