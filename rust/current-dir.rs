use std::env;

fn main() -> std::io::Result<()> {
    let path = env::current_dir()?;
    println!("The current directory is {}", path.display());
    Ok(())
}
