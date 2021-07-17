use std::fs::File;
use std::io::prelude::*;

fn main() -> std::io::Result<()> {
    // the name of the file to write to
    let mut file = File::create("foo.txt")?;
    // the content to write to the file
    file.write_all(b"Hello, world!")?;
    Ok(())
}
