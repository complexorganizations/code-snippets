use std::env;

fn main() {
    // Get the current working directory
    println!("Current directory: {}", get_cwd());
}

// Get the current working directory and return it as a String
fn get_cwd() -> String {
    return env::current_dir().unwrap().display().to_string()
}
