use std::fs;

fn main() -> std::io::Result<()> {
    // the path of the folder
    let filename = "folder/";
    // remove the folder
    fs::remove_dir(filename)?;
    Ok(())
}
