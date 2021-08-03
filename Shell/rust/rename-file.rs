use std::fs;

fn main() -> std::io::Result<()> {
    // the path for new and old files
    let old_path = "./hello.txt";
    let new_path = "./hello2.txt";
    // rename old file to new one
    fs::rename(old_path, new_path)?;
    Ok(())
}
