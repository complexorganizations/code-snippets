use rand::Rng;

fn main() {
    // Generate a random boolean
    println!("{}", random_boolean());
}

// Generate a random boolean
fn random_boolean() -> bool {
    rand::thread_rng().gen::<bool>()
}

// Generate a random int
