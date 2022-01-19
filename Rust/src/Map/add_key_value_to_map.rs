use std::collections::HashMap;

fn main() {
  // Create a new map.
  let mut generated_map = HashMap::new();
  // Add a key value pair to a given map.
  add_key_value_to_map(&mut generated_map, "John".to_string(), "Doe".to_string());
  // Print the map.
  println!("{:?}", generated_map);
}

// Add a key value pair to a given map.
fn add_key_value_to_map(map: &mut HashMap<String, String>, key: String, value: String) {
    map.insert(key, value);
}
