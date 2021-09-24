use std::env;

fn main() {
    // Get the current working directory
    println!("Current directory: {}", get_cwd());
    // Remove a directory
    remove_dir("/some/random/dir/");
    // Check if a directory exists
    if dir_exists("/some/random/dir/") {
        println!("Directory exists!");
    }
    // Create a directory
    create_dir("/some/random/dir/");
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

// Check if the directory exists
fn dir_exists(path: &str) -> bool {
    fs::metadata(path).is_ok()
}

// Create a directory
fn create_dir(path: &str) {
    fs::create_dir(path)?;
}
