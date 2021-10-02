use rand::Rng;

fn main() {
    // Generate a random boolean
    println!("{}", random_boolean());
}

// Generate a random boolean
fn random_boolean() -> bool {
    let mut rng = rand::thread_rng();
    rng.gen::<bool>()
}
