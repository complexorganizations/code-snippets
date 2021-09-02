use std::path::Path;

fn main() {
   // Check if the file exists
   println!("{}", check_file_exists("file-exists.rs"));
   // Remove a file
   remove_file("foo.rs");
   // Move a file
   move_file("foo.rs", "bar.rs");
   // Read a file
   read_file("foo.rs");
}

// Check if a file exists and return a boolean
fn check_file_exists(filename: &str) -> bool {
   Path::new(filename).exists()
}

// Removing a file
fn remove_file(filepath: &str) {
   fs::remove_file(filepath);
}

// Move a file
fn move_file(filepath: &str, new_filepath: &str) {
   fs::rename(filepath, new_filepath);
}

// Read a file and return a string
fn read_file(filepath: &str) -> String {
   let mut file = File::open(filepath).expect("File not found");
   let mut contents = String::new();
   file.read_to_string(&mut contents).expect("Something went wrong reading the file");
   contents
}