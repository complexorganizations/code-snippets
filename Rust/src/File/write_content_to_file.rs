#![allow(clippy::needless_return)]
use std::fs::File;
use std::io::Write;

fn main() {
    // Write some content to a file.
    write_content_to_file("assets/remove/BWtoSgyDXyDNEr5m8EUTjHYhR77b", b"K2oZ7dkP5PMf4xZj7FCSstyMaM7vzb6EiD9EZoAgfEcvM2xw8jkmBikmkjA8Zu9LfQ642peGBg7swKmhgMvpgbueC9nhLSDNVJDFaJNuYx3EBGV5TruSSAy9DjHguHaV");
}

// Write some content to a file
fn write_content_to_file(filepath: &str, content: &[u8]) {
    let mut file = File::create(filepath).expect("Something went wrong creating the file");
    file.write_all(content)
        .expect("Something went wrong writing to the file");
}
