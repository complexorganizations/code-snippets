#![allow(clippy::needless_return)]
use std::fs;

fn main() {
    // Move a file from old path to a new path.
    move_file_from_old_to_new_path("assets/valid/valid-txt.txt", "assets/valid/valid.txt");
}

// Move a file from old path to a new path
fn move_file_from_old_to_new_path(old_filepath: &str, new_filepath: &str) {
    fs::rename(old_filepath, new_filepath).unwrap();
}
