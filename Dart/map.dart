import "dart:core";

void main() {
  // Create a basic map
  final Map<dynamic, dynamic> simpleMap = <dynamic, dynamic>{};
  // Add a new entry to the map
  addToMap(simpleMap, "first_name", "John");
  addToMap(simpleMap, "last_name", "Doe");
  addToMap(simpleMap, "age", 30);
  addToMap(simpleMap, "is_married", false);
  addToMap(simpleMap, "gender", "male");
  addToMap(simpleMap, "some_value", "some_key");
  // Remove an entry from the map
  removeFromMap(simpleMap, "last_name");
  // Get the value of an entry
  print(getValueFromMap(simpleMap, "age"));
  // Get the key of a value from the map
  print(getKeyFromMap(simpleMap, 30));
  // Get all the keys from the map
  print(getKeysFromMap(simpleMap));
  // Get all the values from the map
  print(getValuesFromMap(simpleMap));
  // Check if a key exists in the map
  print(keyExistsInMap(simpleMap, "age"));
  // Check if a value exists in the map
  print(valueExistsInMap(simpleMap, "John"));
  // Check if a map is empty
  print(isMapEmpty(simpleMap));
  // Check if a map is not empty
  print(isMapNotEmpty(simpleMap));
  // Get the size of the map
  print(getMapSize(simpleMap));
  // Loop through all the entries in the map.
  forEachMapEntry(simpleMap);
  // Remove all entries from the map
  clearMap(simpleMap);
}

// Add a new key value pair to the map
Map<dynamic, dynamic> addToMap(
  final Map<dynamic, dynamic> map,
  final String key,
  final dynamic value,
) {
  map[key] = value;
  return map;
}

// Remove a key value pair from the map
Map<dynamic, dynamic> removeFromMap(
  final Map<dynamic, dynamic> map,
  final String key,
) {
  map.remove(key);
  return map;
}

// Get the value of a key from the map
dynamic getValueFromMap(final Map<dynamic, dynamic> map, final String key) {
  return map[key];
}

// Get the key of a value from the map
dynamic getKeyFromMap(
  final Map<dynamic, dynamic> map,
  final dynamic value,
) {
  return map.keys.firstWhere((final dynamic key) => map[key] == value);
}

// Get all the keys from the map.
List<dynamic> getKeysFromMap(final Map<dynamic, dynamic> map) {
  return map.keys.toList();
}

// Get all the values from the map.
List<dynamic> getValuesFromMap(final Map<dynamic, dynamic> map) {
  return map.values.toList();
}

// Check if a key exists in the map.
bool keyExistsInMap(final Map<dynamic, dynamic> map, final String key) {
  return map.containsKey(key);
}

// Check if a value exists in the map.
bool valueExistsInMap(final Map<dynamic, dynamic> map, final dynamic value) {
  return map.containsValue(value);
}

// Check if a map is empty.
bool isMapEmpty(final Map<dynamic, dynamic> map) {
  return map.isEmpty;
}

// Check if a map is not empty.
bool isMapNotEmpty(final Map<dynamic, dynamic> map) {
  return map.isNotEmpty;
}

// Get the size of the map.
int getMapSize(final Map<dynamic, dynamic> map) {
  return map.length;
}

// Loop through all the entries in the map.
void forEachMapEntry(final Map<dynamic, dynamic> map) {
  map.forEach((final dynamic key, final dynamic value) {
    print("${key}: ${value}");
  });
}

// Remove all the key value pair from the map
Map<dynamic, dynamic> clearMap(final Map<dynamic, dynamic> map) {
  map.clear();
  return map;
}
