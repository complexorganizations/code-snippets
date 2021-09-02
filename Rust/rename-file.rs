use std::fs;

fn main() -> std::io::Result<()> {
    // the path for new and old files
    let old_path = "foo.txt";
    let new_path = "bar.txt";
    // rename old file to new one
    fs::rename(old_path, new_path)?;
    Ok(())
}
