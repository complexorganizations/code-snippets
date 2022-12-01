#![allow(clippy::needless_return)]
use std::env;

fn main() {
    // Change the current working directory.
    change_current_working_directory("assets/valid/j3U5uJY779L49q98MX86iFsxs2kY9ew3/");
}

// Change the current working directory to the given path
fn change_current_working_directory(path: &str) {
    env::set_current_dir(path).unwrap();
}
