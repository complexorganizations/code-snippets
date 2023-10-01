fn main() {
    // Remove a directory from the system.
    remove_directory("assets/remove/89mmtNQY7hM7389f48Sw46ZhbRDNQ2h9/");
}

// Remove a directory from the system.
fn remove_directory(directory_path: &str) {
    std::fs::remove_dir(directory_path).unwrap();
}
