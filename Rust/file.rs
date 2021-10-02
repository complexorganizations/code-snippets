use std::path::Path;
use std::fs;
use fs::File;
use std::io::Write;
use std::io::Read;
use std::env;

fn main() {
   // Write some content to a file
   write_content_to_file("foo.txt", b"Hello, World");
   // Check if the file exists
   println!("{}", check_file_exists("foo.txt"));
   // Read a file
   println!("{}", read_file("foo.txt"));
   // Move a file
   move_file("foo.txt", "bar.txt");
   // Remove a file
   remove_file("bar.txt");
   // Get the temporary directory
   println!("{}", get_temp_dir());
   // Get the current bin path
   println!("{}", get_current_bin_path());
}

// Check if a file exists and return a boolean
fn check_file_exists(filename: &str) -> bool {
   Path::new(filename).exists()
}

// Removing a file
fn remove_file(filepath: &str) {
   fs::remove_file(filepath).unwrap();
}

// Move a file
fn move_file(filepath: &str, new_filepath: &str) {
   fs::rename(filepath, new_filepath).unwrap();
}

// Read a file and return a string
fn read_file(filepath: &str) -> String {
   let mut file = File::open(filepath).expect("File not found");
   let mut contents = String::new();
   file.read_to_string(&mut contents).expect("Something went wrong reading the file");
   contents
}

// Write some content to a file
fn write_content_to_file(filepath: &str, content: &[u8]) {
   let mut file = File::create(filepath).expect("Something went wrong creating the file");
   file.write_all(content).expect("Something went wrong writing to the file");
}

// Get the temporary directory path
fn get_temp_dir() -> String {
   env::temp_dir().display().to_string()
}

// Get the current binary path
fn get_current_bin_path() -> String {
   env::current_exe().unwrap().display().to_string()
}