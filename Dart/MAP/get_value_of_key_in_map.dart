import "dart:core";

void main() {
  // Create a new map.
  final Map<dynamic, dynamic> userMap = <dynamic, dynamic>{
    "name": "John",
    "age": 30,
    "isMarried": false
  };
  // Get the value of a key in a map.
  print(getTheValueOfKeyInMap(userMap, "age"));
}

// Get the value of a key in the given map.
dynamic getTheValueOfKeyInMap(
  final Map<dynamic, dynamic> currentMap,
  final dynamic key,
) {
  return currentMap[key];
}
