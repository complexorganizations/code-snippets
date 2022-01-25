#![allow(clippy::needless_return)]
use std::collections::HashMap;

fn main() {
    // Create a new map.
    let mut generated_map = HashMap::new();
    // Add random key value pair to a given map.
    generated_map.insert("a", "1");
    generated_map.insert("b", "2");
    generated_map.insert("c", "3");
    // Check if a map is empty.
    println!("{}", is_map_empty(&mut generated_map));
}

// Check if the given map is empty.
fn is_map_empty(map: &HashMap<&str, &str>) -> bool {
    return map.is_empty();
}
