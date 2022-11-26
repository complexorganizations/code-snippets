import "dart:core";

void main() {
  // Create a new map
  final Map<dynamic, dynamic> userMap = <dynamic, dynamic>{};
  // Add some content to a map
  print(addContentToMap(userMap, "Name", "John"));
}

// Add some content to a map.
Map<dynamic, dynamic> addContentToMap(
  final Map<dynamic, dynamic> currentMap,
  final String key,
  final dynamic value,
) {
  currentMap[key] = value;
  return currentMap;
}
