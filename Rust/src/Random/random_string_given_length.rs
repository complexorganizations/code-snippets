#[allow(clippy::needless_return)]
use rand::Rng;
use rand::thread_rng;
use rand::distributions::Alphanumeric;

fn main() {
    // Generate a random string of a given length.
    println!("{}", random_string_given_length(10));
}

// Generate a random string of a given length.
fn random_string_given_length(length: usize) -> String {
    let rand_string: String = thread_rng()
        .sample_iter(&Alphanumeric)
        .take(length)
        .map(char::from)
        .collect();
    return rand_string;
}
