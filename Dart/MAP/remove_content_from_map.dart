import "dart:core";

void main() {
  // Create a new map
  final Map<dynamic, dynamic> userMap = <dynamic, dynamic>{
    "name": "John",
    "age": 30,
    "isMarried": false
  };
  // Remove content from a given map
  print(removeContentFromMap(userMap, "name"));
}

// Remove content from a given map.
Map<dynamic, dynamic> removeContentFromMap(
  final Map<dynamic, dynamic> currentMap,
  final String key,
) {
  currentMap.remove(key);
  return currentMap;
}
