#![allow(clippy::needless_return)]
use std::collections::HashMap;

fn main() {
    // Create a new map.
    let mut generated_map = HashMap::new();
    // Add random key value pair to a given map.
    generated_map.insert("a", "1");
    generated_map.insert("b", "2");
    generated_map.insert("c", "3");
    // Remove a key value pair from a given map.
    remove_key_value_pair(&mut generated_map, "a");
    // Print the map.
    println!("{:?}", generated_map);
}

// Remove a key value pair from a given map.
fn remove_key_value_pair<'a>(map: &mut HashMap<&'a str, &'a str>, key: &'a str) -> Option<&'a str> {
    return map.remove(key);
}
