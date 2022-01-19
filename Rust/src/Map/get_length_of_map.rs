use std::collections::HashMap;

fn main() {
  // Create a new map.
  let mut generated_map = HashMap::new();
  // Add random key value pair to a given map.
  generated_map.insert("a", "1");
  generated_map.insert("b", "2");
  generated_map.insert("c", "3");
  // Get the length of a map.
  println!("{:?}", get_length_of_map(&mut generated_map));
}

// Get the length of a given map.
fn get_length_of_map(map: &HashMap<&str, &str>) -> usize {
    return map.len();
}
