#![allow(clippy::needless_return)]

fn main() {
    // Get all the directory only from a given directory.
    println!("{:?}", get_all_directory_from_given_directory("assets/remove/zVA3m3BEJ5wSe45v93Fi8788z4GoKjnW/"));
}

// Get all the directory only from a given directory.
fn get_all_directory_from_given_directory(path: &str) -> Vec<String> {
    let mut folders = Vec::new();
    for entry in std::fs::read_dir(path).unwrap() {
        let entry = entry.unwrap();
        if entry.file_type().unwrap().is_dir() {
            folders.push(entry.path().display().to_string());
        }
    }
    return folders;
}

