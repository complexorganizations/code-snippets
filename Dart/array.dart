void main() {
  // Global
  var content = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // Get the index of a value in a array.
  print(checkIndexInArray(content, 5));
  // Check if the array contains a certain value.
  print(arrayContains(content, 5));
  // Add a value to the array.
  print(addContentToArray(content, 11));
  // Sort a list
  var randomStuff = [
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z",
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j"
  ];
  print(randomStuff); // without sorting the list
  var newList = sortList(randomStuff);
  print(newList); // while sorting the list
}

// Get the index of a value in a list.
int? checkIndexInArray(array, value) {
  for (int i = 0; i < array.length; i++) {
    if (array[i] == value) {
      return i;
    }
  }
  return null;
}

// Check if the array contains the value
bool arrayContains(array, value) {
  for (var i = 0; i < array.length; i++) {
    if (array[i] == value) {
      return true;
    }
  }
  return false;
}

// Add a certain value to the array.
List addContentToArray(array, value) {
  array.add(value);
  return array;
}

// Takes in a list and returns a sorted list
List sortList(List arrayContent) {
  arrayContent.sort();
  return arrayContent;
}
