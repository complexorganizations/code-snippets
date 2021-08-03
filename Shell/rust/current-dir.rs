use std::env;

fn main() -> std::io::Result<()> {
    // Get the current working directory
    let path = env::current_dir()?;
    // Print the current working directory
    println!("The current directory is {}", path.display());
    Ok(())
}
