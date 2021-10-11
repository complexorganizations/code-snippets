void main() {
  // Create a array of strings
  final List<String> names = ["John", "Bob", "Alice"];
  print(names);
  // Create an array without defining the type
  final List<int> arrayList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // Get the index of a value in a array.
  print(checkIndexInArray(arrayList, 5));
  // Check if the array contains a certain value.
  print(arrayContains(arrayList, 5));
  // Add a value to the array.
  print(addContentToArray(arrayList, 11));
  // Remove a value from the list
  print(removeContentFromArray(arrayList, "a"));
  // Sort a list
  final List<String> randomStuff = ["k", "l", "m", "n", "o", "p"];
  print(randomStuff); // without sorting the list
  final newList = sortList(randomStuff);
  print(newList); // while sorting the list
  // create a list of int
  final list = [3, 1, 2, 4, 5];
  print(list);
  // sort the list of int
  final someList = sortList(list);
  print(someList);
  // sort the list of string
  final randomString = ["e", "d", "a", "c", "f", "b", "g", "h", "i", "j"];
  print(randomString);
  final newStringList = sortList(randomString);
  print(newStringList);
  // sort the list of double
  final randomDouble = [1.1, 2.2, 3.3, 4.4, 5.5, 6.6, 7.7, 8.8, 9.9, 10.0];
  print(randomDouble);
  final newDoubleList = sortList(randomDouble);
  print(newDoubleList);
  // Reverse a list
  print(reverseList(newList));
  // Get the length of a list
  print(getListLength(newList));
  // Shuffle a list
  print(shuffleList(newList));
  // Change the value of a list at a certain index
  print(changeContentAtIndex(newList, 3, "a"));
  // Get the first element of a list
  print(getFirstElement(newList));
  // Get the last element of a list
  print(getLastElement(newList));
  // Get the middle element of a list
  print(getMiddleElement(newList));
  // Get the element at a certain index of a list
  print(getElementAtIndex(newList, 3));
  // Get the element after a certain index of a list
  print(getElementAfterIndex(newList, 3));
  // Get the element before a certain index of a list
  print(getElementBeforeIndex(newList, 3));
  // Check if a list is empty
  print(isArrayEmpty(newList));
  // Check if a list is not empty
  print(isArrayNotEmpty(newList));
  // Remove a value from the list at a certain index
  print(removeContentFromListAtIndex(newList, 3));
  // Remove all duplicate values from the list
  print(removeDuplicatesFromList(newList));
  // Remove all values from the list
  print(removeAllContentFromList(newList));
}

// Add a certain value to the array.
List addContentToArray(final List array, final value) {
  array.add(value);
  return array;
}

// Remove a value from the array.
List removeContentFromArray(final List arrayContent, final value) {
  arrayContent.remove(value);
  return arrayContent;
}

// Get the index of a value in a list.
int? checkIndexInArray(final List array, final value) {
  for (int i = 0; i < array.length; i++) {
    if (array[i] == value) {
      return i;
    }
  }
  return null;
}

// Check if the array contains the value
bool arrayContains(final List array, final value) {
  for (int i = 0; i < array.length; i++) {
    if (array[i] == value) {
      return true;
    }
  }
  return false;
}

// Takes in a array and returns a sorted array
List sortList(final List arrayContent) {
  arrayContent.sort();
  return arrayContent;
}

// Reverse a list and return it.
List reverseList(final List arrayContent) {
  arrayContent.reversed;
  return arrayContent;
}

// Get the length of a list.
int getListLength(final List arrayContent) {
  return arrayContent.length;
}

// Suffle a list and return it.
List shuffleList(final List arrayContent) {
  arrayContent.shuffle();
  return arrayContent;
}

// Get the first element of a list.
dynamic getFirstElement(final List arrayContent) {
  return arrayContent.first;
}

// Get the last element of a list.
dynamic getLastElement(final List arrayContent) {
  return arrayContent.last;
}

// Get the middle element of a list.
dynamic getMiddleElement(final List arrayContent) {
  return arrayContent[getListLength(arrayContent) ~/ 2];
}

// Get the element at a certain index of a list.
dynamic getElementAtIndex(final List arrayContent, final int index) {
  return arrayContent[index];
}

// Get the element after a certain index of a list.
dynamic getElementAfterIndex(final List arrayContent, final int index) {
  return arrayContent[index + 1];
}

// Get the element before a certain index of a list.
dynamic getElementBeforeIndex(final List arrayContent, final int index) {
  return arrayContent[index - 1];
}

// Check if the array is empty.
bool isArrayEmpty(final List arrayContent) {
  return arrayContent.isEmpty;
}

// Check if the array isnt empty.
bool isArrayNotEmpty(final List arrayContent) {
  return arrayContent.isNotEmpty;
}

// Remove a value from the list at a certain index.
List removeContentFromListAtIndex(final List arrayContent, final int index) {
  arrayContent.removeAt(index);
  return arrayContent;
}

// Remove all values from the list.
List removeAllContentFromList(final List arrayContent) {
  arrayContent.clear();
  return arrayContent;
}

// Remove all duplicates from a list.
List removeDuplicatesFromList(final List arrayContent) {
  arrayContent.toSet().toList();
  return arrayContent;
}

// Change the value of a certain item in an array at a certain index.
List changeContentAtIndex(final List userArray, final int index, final value) {
  userArray[index] = value;
  return userArray;
}
