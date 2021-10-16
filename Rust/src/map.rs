use std::collections::HashMap;

fn main() {
    // Create a simple map
    let mut generated_map = HashMap::new();
    // Add a key-value pair
    println!(
        "{:?}",
        add_key_value_pair(&mut generated_map, "John".to_string(), "Doe".to_string())
    );
    println!(
        "{:?}",
        add_key_value_pair(&mut generated_map, "Jane".to_string(), "Doe".to_string())
    );
    println!(
        "{:?}",
        add_key_value_pair(&mut generated_map, "Richard".to_string(), "Doe".to_string())
    );
    println!(
        "{:?}",
        add_key_value_pair(&mut generated_map, "Jane".to_string(), "Doe".to_string())
    );
    println!(
        "{:?}",
        add_key_value_pair(&mut generated_map, "Baby".to_string(), "Doe".to_string())
    );
    println!(
        "{:?}",
        add_key_value_pair(&mut generated_map, "Janie".to_string(), "Doe".to_string())
    );
    println!(
        "{:?}",
        add_key_value_pair(&mut generated_map, "Johnny".to_string(), "Doe".to_string())
    );
    // Remove a key-value pair
    println!(
        "{:?}",
        remove_key_value_pair(&mut generated_map, "John".to_string())
    );
    // Get the first value of the map
    println!("{:?}", get_first_value(&mut generated_map));
    // Get the last value of the map
    println!("{:?}", get_last_value(&mut generated_map));
    // Get the first key of the map
    println!("{:?}", get_first_key(&mut generated_map));
    // Get the last key of the map
    println!("{:?}", get_last_key(&mut generated_map));
    //
    // Get the size of the map
    println!("{:?}", get_size(&mut generated_map));
    // Get the keys of the map
    println!("{:?}", get_keys(&mut generated_map));
    // Get the values of the map
    println!("{:?}", get_values(&mut generated_map));
    // Check if the map contains a key
    println!("{:?}", contains_key(&mut generated_map, "John".to_string()));
    // Check if the map is empty
    println!("{:?}", is_empty(&mut generated_map));
    // Clear the map
    println!("{:?}", clear_map(&mut generated_map));
}

// Add a key value pair to the map
fn add_key_value_pair(map: &mut HashMap<String, String>, key: String, value: String) {
    map.insert(key, value);
}

// Remove a key value pair from the map
fn remove_key_value_pair(map: &mut HashMap<String, String>, key: String) {
    map.remove(&key);
}

// Get the first value of the map
fn get_first_value(map: &HashMap<String, String>) -> String {
    let mut iter = map.iter();
    return iter.next().unwrap().1.to_string();
}

// Get the last value of the map
fn get_last_value(map: &HashMap<String, String>) -> String {
    let iter = map.iter();
    let mut last_value = None;
    for (key, value) in iter {
        last_value = Some((key.to_string(), value.to_string()));
    }
    return last_value.unwrap().1.to_string();
}

// Get the first key of the map
fn get_first_key(map: &HashMap<String, String>) -> String {
    let mut iter = map.iter();
    return iter.next().unwrap().0.to_string();
}

// Get the last key of the map
fn get_last_key(map: &HashMap<String, String>) -> String {
    let iter = map.iter();
    let mut last_key = None;
    for (key, _) in iter {
        last_key = Some(key.to_string());
    }
    return last_key.unwrap().to_string();
}

// Get the size of the map
fn get_size(map: &HashMap<String, String>) -> usize {
    return map.len();
}

// Get the keys of the map
fn get_keys(map: &HashMap<String, String>) -> Vec<String> {
    let mut keys = Vec::new();
    for (key, _) in map.iter() {
        keys.push(key.to_string());
    }
    return keys;
}

// Get the values of the map
fn get_values(map: &HashMap<String, String>) -> Vec<String> {
    let mut values = Vec::new();
    for (_, value) in map.iter() {
        values.push(value.to_string());
    }
    return values;
}

// Check if the map contains a key
fn contains_key(map: &HashMap<String, String>, key: String) -> bool {
    return map.contains_key(&key);
}

// Check if the map is empty
fn is_empty(map: &HashMap<String, String>) -> bool {
    return map.is_empty();
}

// Clear the map
fn clear_map(map: &mut HashMap<String, String>) {
    map.clear();
}
