import "dart:core";

void main() {
  // Create a new map.
  final Map<dynamic, dynamic> userMap = <dynamic, dynamic>{
    "name": "John",
    "age": 30,
    "isMarried": false
  };
  // Get a list of all the keys in the map.
  print(getAllValuesFromMap(userMap));
}

// Get all the values from a given map.
List<dynamic> getAllValuesFromMap(final Map<dynamic, dynamic> providedMap) {
  return providedMap.values.toList();
}
