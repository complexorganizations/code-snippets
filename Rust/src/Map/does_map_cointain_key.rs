#![allow(clippy::needless_return)]
use std::collections::HashMap;

fn main() {
    // Create a new map.
    let mut generated_map = HashMap::new();
    // Add random key value pair to a given map.
    generated_map.insert("a", "1");
    generated_map.insert("b", "2");
    generated_map.insert("c", "3");
    // Check if the map contains a key.
    println!("{:?}", does_map_cointain_key(&mut generated_map, "a"));
}


// Check if the given map contains a given key.
fn does_map_cointain_key<'a>(map: &mut HashMap<&'a str, &'a str>, key: &'a str) -> bool {
    return map.contains_key(key);
}