fn main() {
    // Create a directory at a given path
    create_directory("assets/remove/9JaUC5F3G58oLLJ9jEm86x295");
}

// Create a directory at a given path
fn create_directory(directory_path: &str) {
    std::fs::create_dir(directory_path).unwrap();
}
