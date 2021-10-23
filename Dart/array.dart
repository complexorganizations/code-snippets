import "dart:core";

void main() {
  // Create a array of strings
  final List<String> names = <String>["John", "Bob", "Alice"];
  print(names);
  // Create an array without defining the type
  final List<int> arrayList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // Get the index of a value in a array.
  print(getIndexInArray(arrayList, 5));
  // Check if the array contains a certain value.
  print(arrayContains(arrayList, 5));
  // Add a value to the array.
  print(addToArray(arrayList, 11));
  // Remove a value from the list
  print(removeFromArray(arrayList, "a"));
  // Sort a list
  final List<String> randomStuff = <String>["k", "l", "m", "n", "o", "p"];
  print(randomStuff); // without sorting the list
  final List<dynamic> newList = sortList(randomStuff);
  print(newList); // while sorting the list
  // create a list of int
  final List<int> list = <int>[3, 1, 2, 4, 5];
  print(list);
  // sort the list of int
  final List<dynamic> someList = sortList(list);
  print(someList);
  // sort the list of string
  final List<String> randomString = <String>[
    "e",
    "d",
    "a",
    "c",
    "f",
    "b",
    "g",
    "h",
    "i",
    "j"
  ];
  print(randomString);
  final List<dynamic> newStringList = sortList(randomString);
  print(newStringList);
  // sort the list of double
  final List<double> randomDouble = <double>[
    1.1,
    2.2,
    3.3,
    4.4,
    5.5,
    6.6,
    7.7,
    8.8,
    9.9,
    10.0
  ];
  print(randomDouble);
  final List<dynamic> newDoubleList = sortList(randomDouble);
  print(newDoubleList);
  // Reverse a list
  print(reverseList(newList));
  // Get the length of a list
  print(getListLength(newList));
  // Shuffle a list
  print(shuffleList(newList));
  // Change the value of a list at a certain index
  print(changeAtIndex(newList, 3, "a"));
  // Get the first element of a list
  print(getFirstElement(newList));
  // Get the last element of a list
  print(getLastElement(newList));
  // Get the middle element of a list
  print(getMiddleElement(newList));
  // Get the element at a certain index of a list
  print(getElementAtIndex(newList, 3));
  // Get the element after a certain index of a list
  print(elementAfterIndex(newList, 3));
  // Get the element before a certain index of a list
  print(elementBeforeIndex(newList, 3));
  // Check if a list is empty
  print(isArrayEmpty(newList));
  // Check if a list is not empty
  print(isArrayNotEmpty(newList));
  // Remove a value from the list at a certain index
  print(removeAtIndex(newList, 3));
  // Remove all duplicate values from the list
  print(removeDuplicatesFromList(newList));
  // Remove all values from the list
  print(removeAllContentFromList(newList));
}

// Add a certain value to the array.
List<dynamic> addToArray(final List<dynamic> array, final dynamic value) {
  array.add(value);
  return array;
}

// Remove a value from the array.
List<dynamic> removeFromArray(final List<dynamic> array, final dynamic value) {
  array.remove(value);
  return array;
}

// Get the index of a value in a list.
int? getIndexInArray(final List<dynamic> array, final dynamic value) {
  for (int i = 0; i < array.length; i++) {
    if (array[i] == value) {
      return i;
    }
  }
  return null;
}

// Check if the array contains the value
bool arrayContains(final List<dynamic> array, final dynamic value) {
  for (int i = 0; i < array.length; i++) {
    if (array[i] == value) {
      return true;
    }
  }
  return false;
}

// Takes in a array and returns a sorted array
List<dynamic> sortList(final List<dynamic> arrayContent) {
  arrayContent.sort();
  return arrayContent;
}

// Reverse a list and return it.
List<dynamic> reverseList(final List<dynamic> arrayContent) {
  arrayContent.reversed;
  return arrayContent;
}

// Get the length of a list.
int getListLength(final List<dynamic> arrayContent) {
  return arrayContent.length;
}

// Suffle a list and return it.
List<dynamic> shuffleList(final List<dynamic> arrayContent) {
  arrayContent.shuffle();
  return arrayContent;
}

// Get the first element of a list.
dynamic getFirstElement(final List<dynamic> arrayContent) {
  return arrayContent.first;
}

// Get the last element of a list.
dynamic getLastElement(final List<dynamic> arrayContent) {
  return arrayContent.last;
}

// Get the middle element of a list.
dynamic getMiddleElement(final List<dynamic> arrayContent) {
  return arrayContent[getListLength(arrayContent) ~/ 2];
}

// Get the element at a certain index of a list.
dynamic getElementAtIndex(final List<dynamic> arrayContent, final int index) {
  return arrayContent[index];
}

// Get the element after a certain index of a list.
dynamic elementAfterIndex(final List<dynamic> arrayContent, final int index) {
  return arrayContent[index + 1];
}

// Get the element before a certain index of a list.
dynamic elementBeforeIndex(final List<dynamic> arrayContent, final int index) {
  return arrayContent[index - 1];
}

// Check if the array is empty.
bool isArrayEmpty(final List<dynamic> arrayContent) {
  return arrayContent.isEmpty;
}

// Check if the array isnt empty.
bool isArrayNotEmpty(final List<dynamic> arrayContent) {
  return arrayContent.isNotEmpty;
}

// Remove a value from the list at a certain index.
List<dynamic> removeAtIndex(final List<dynamic> arrayContent, final int index) {
  arrayContent.removeAt(index);
  return arrayContent;
}

// Remove all values from the list.
List<dynamic> removeAllContentFromList(final List<dynamic> arrayContent) {
  arrayContent.clear();
  return arrayContent;
}

// Remove all duplicates from a list.
List<dynamic> removeDuplicatesFromList(final List<dynamic> arrayContent) {
  arrayContent.toSet().toList();
  return arrayContent;
}

// Change the value of a certain item in an array at a certain index.
List<dynamic> changeAtIndex(
  final List<dynamic> arry,
  final int index,
  final dynamic value,
) {
  arry[index] = value;
  return arry;
}
