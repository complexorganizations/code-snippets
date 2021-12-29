import "dart:core";

void main() {
  // Create a new map.
  final Map<dynamic, dynamic> userMap = <dynamic, dynamic>{
    "name": "John",
    "age": 30,
    "isMarried": false
  };
  // Get the length of the map.
  print(getMapLength(userMap));
}

// Get the length of a given map.
int getMapLength(final Map<dynamic, dynamic> providedMap) {
  return providedMap.length;
}