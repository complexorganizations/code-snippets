use std::env;

fn main() {
    // Get the current working directory
    println!("Current directory: {}", get_cwd());
    // Remove a directory
    remove_dir("/some/random/dir/");
}

// Get the current working directory and return it as a String
fn get_cwd() -> String {
    let path = env::current_dir().unwrap();
    path.display().to_string()
}

// Remove the directory
fn remove_dir(path: &str) {
    fs::remove_dir(path)?;
}