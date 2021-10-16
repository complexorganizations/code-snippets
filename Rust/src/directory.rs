#![allow(clippy::needless_return)]
use std::env;

fn main() {
    // Get the current working directory
    println!("{}", get_cwd());
    // Create a new directory
    create_directory("new_dir/");
    // Change the current working directory
    change_cwd("new_dir/");
    // Get all the folders in the current working directory
    println!("{:?}", get_folders_in_current_path());
    // Get all the folders in the given directory
    println!("{:?}", get_folders_from_path("new_dir/"));
    // Delete a directory
    remove_directory("new_dir/");
}

// Get the current working directory and return it as a String
fn get_cwd() -> String {
    return env::current_dir().unwrap().display().to_string();
}

// Change the current working directory to the given path
fn change_cwd(path: &str) {
    env::set_current_dir(path).unwrap();
}

// Get all the folders only in the current working directory
fn get_folders_in_current_path() -> Vec<String> {
    let mut folders = Vec::new();
    for entry in env::current_dir().unwrap().read_dir().unwrap() {
        let entry = entry.unwrap();
        if entry.file_type().unwrap().is_dir() {
            folders.push(entry.path().display().to_string());
        }
    }
    return folders;
}

// Get all the folders only from the given path
fn get_folders_from_path(path: &str) -> Vec<String> {
    let mut folders = Vec::new();
    for entry in std::fs::read_dir(path).unwrap() {
        let entry = entry.unwrap();
        if entry.file_type().unwrap().is_dir() {
            folders.push(entry.path().display().to_string());
        }
    }
    return folders;
}

// Create a directory
fn create_directory(path: &str) {
    std::fs::create_dir(path).unwrap();
}

// Remove a directory
fn remove_directory(path: &str) {
    std::fs::remove_dir(path).unwrap();
}
