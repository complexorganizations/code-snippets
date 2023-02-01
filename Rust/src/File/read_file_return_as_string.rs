#![allow(clippy::needless_return)]
use std::fs::File;
use std::io::Read;

fn main() {
    // Read a file from system.
    println!("{}", read_file_return_as_string("assets/valid/valid-json.json"));
}

// Read a file from system and return it as string
fn read_file_return_as_string(filepath: &str) -> String {
    let mut file = File::open(filepath).expect("File not found");
    let mut contents = String::new();
    file.read_to_string(&mut contents)
        .expect("Something went wrong reading the file");
    return contents;
}
