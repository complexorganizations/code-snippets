use std::fs;

fn main() -> std::io::Result<()> {
    // the path to the file
    let filepath = "./hello.txt";
    // remove the file
    fs::remove_file(filepath)?;
    Ok(())
}
