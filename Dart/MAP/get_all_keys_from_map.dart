import "dart:core";

void main() {
  // Create a new map.
  final Map<dynamic, dynamic> userMap = <dynamic, dynamic>{
    "name": "John",
    "age": 30,
    "isMarried": false
  };
  // Get a list of all the keys in the map.
  print(getAllKeysFromMap(userMap));
}

// Get a list of all the keys in a given map.
List<dynamic> getAllKeysFromMap(final Map<dynamic, dynamic> providedMap) {
  final List<dynamic> keys = <dynamic>[];
  providedMap.forEach((final dynamic key, final dynamic value) {
    keys.add(key);
  });
  return keys;
}
