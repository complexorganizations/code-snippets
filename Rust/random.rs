use rand::Rng;

fn main() {
    // Generate a random boolean
    println!("{}", random_boolean());
    // Random u8
    println!("{}", random_eight_bit_integer());
    // Random u16
    println!("{}", random_sixteen_bit_integer());
    // Random u32
    println!("{}", random_thirtytwo_bit_integer());

}

// Generate a random boolean
fn random_boolean() -> bool {
    rand::thread_rng().gen::<bool>()
}

// Generate a random 8 bit integer
fn random_eight_bit_integer() -> u8 {
    rand::thread_rng().gen::<u8>()
}

// Generate a random 16 bit integer
fn random_sixteen_bit_integer() -> u16 {
    rand::thread_rng().gen::<u16>()
}

// Generate a random 32 bit integer
fn random_thirtytwo_bit_integer() -> u32 {
    rand::thread_rng().gen::<u32>()
}

// Generate a random 32 bit integer
// println!("Random i32: {}", rng.gen::<i32>());
// println!("Random float: {}", rng.gen::<f64>());
