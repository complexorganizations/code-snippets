use std::path::Path;

fn main() {
   let check-file-exists = Path::new("file.txt").is_file();
   println!(check-file-exists);
}