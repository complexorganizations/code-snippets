import "dart:core";

void main() {
  // Create a new map.
  final Map<dynamic, dynamic> userMap = <dynamic, dynamic>{
    "name": "John",
    "age": 30,
    "isMarried": false
  };
  // Get the key of a given value from the map.
  print(getTheValueOfKeyInMap(userMap, 30));
}

// Get the key of a given value in a map
dynamic getTheValueOfKeyInMap(
  final Map<dynamic, dynamic> currentMap,
  final dynamic value,
) {
  return currentMap.keys.firstWhere(
    (final dynamic key) => currentMap[key] == value,
    orElse: () => null,
  );
}
