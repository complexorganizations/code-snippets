#![allow(clippy::needless_return)]
use std::collections::HashMap;

fn main() {
    // Create a new map.
    let mut generated_map = HashMap::new();
    // Add random key value pair to a given map.
    generated_map.insert("a", "1");
    generated_map.insert("b", "2");
    generated_map.insert("c", "3");
    // Remove everything from a map.
    remove_everything_from_map(&mut generated_map);
    // Print the map.
    println!("{:?}", generated_map);
}

// Remove everything from a map.
fn remove_everything_from_map(map: &mut HashMap<&str, &str>) {
    return map.clear();
}
