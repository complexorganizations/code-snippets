use std::collections::HashMap;

fn main() {
    // Create a new map.
    let mut generated_map = HashMap::new();
    // Add a key value pair to a given map.
    add_key_value_to_map(&mut generated_map, "John", "Doe");
    // Print the map.
    println!("{:?}", generated_map);
}

// Add a key value pair to a given map.
fn add_key_value_to_map<'a>(map: &mut HashMap<&'a str, &'a str>, key: &'a str, value: &'a str) {
    map.insert(key, value);
}
