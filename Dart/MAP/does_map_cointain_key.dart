import "dart:core";

void main() {
  // Create a new map.
  final Map<dynamic, dynamic> userMap = <dynamic, dynamic>{
    "name": "John",
    "age": 30,
    "isMarried": false
  };
  // Check if the map contains a specific key.
  print(userMap.containsKey("name"));
}

// Check if a given map cointian a given key.
bool doesMapCointainKey(final Map<dynamic, dynamic> map, final dynamic key) {
  return map.containsKey(key);
}