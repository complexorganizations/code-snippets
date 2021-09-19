void main() {
  // Create a array of strings
  List<String> names = ["John", "Bob", "Alice"];
  print(names);
  // Create an array without defining the type
  var arrayList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // Get the index of a value in a array.
  print(checkIndexInArray(arrayList, 5));
  // Check if the array contains a certain value.
  print(arrayContains(arrayList, 5));
  // Add a value to the array.
  print(addContentToArray(arrayList, 11));
  // Remove a value from the list
  print(removeContentFromArray(arrayList, "a"));
  // Sort a list
  List<String> randomStuff = ["k", "l", "m", "n", "o", "p"];
  print(randomStuff); // without sorting the list
  var newList = sortList(randomStuff);
  print(newList); // while sorting the list
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
  // Remove a value from the list at a certain index
  print(removeContentFromListAtIndex(newList, 3));
  // Remove all duplicate values from the list
  print(removeDuplicatesFromList(newList));
  // Remove all values from the list
  print(removeAllContentFromList(newList));
}

// Add a certain value to the array.
List addContentToArray(array, value) {
  array.add(value);
  return array;
}

// Remove a value from the array.
List removeContentFromArray(List arrayContent, value) {
  arrayContent.remove(value);
  return arrayContent;
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

// Takes in a array and returns a sorted array
List sortList(List arrayContent) {
  arrayContent.sort();
  return arrayContent;
}

// Reverse a list and return it.
List reverseList(List arrayContent) {
  arrayContent.reversed;
  return arrayContent;
}

// Get the length of a list.
int getListLength(List arrayContent) {
  return arrayContent.length;
}

// Suffle a list and return it.
List shuffleList(List arrayContent) {
  arrayContent.shuffle();
  return arrayContent;
}

// Get the first element of a list.
dynamic getFirstElement(List arrayContent) {
  return arrayContent.first;
}

// Get the last element of a list.
dynamic getLastElement(List arrayContent) {
  return arrayContent.last;
}

// Get the middle element of a list.
dynamic getMiddleElement(List arrayContent) {
  return arrayContent[getListLength(arrayContent) ~/ 2];
}

// Get the element at a certain index of a list.
dynamic getElementAtIndex(List arrayContent, index) {
  return arrayContent[index];
}

// Get the element after a certain index of a list.
dynamic getElementAfterIndex(List arrayContent, index) {
  return arrayContent[index + 1];
}

// Get the element before a certain index of a list.
dynamic getElementBeforeIndex(List arrayContent, index) {
  return arrayContent[index - 1];
}

// Check if the array is empty.
bool isArrayEmpty(List arrayContent) {
  return arrayContent.isEmpty;
}

// Remove a value from the list at a certain index.
List removeContentFromListAtIndex(List arrayContent, index) {
  arrayContent.removeAt(index);
  return arrayContent;
}

// Remove all values from the list.
List removeAllContentFromList(List arrayContent) {
  arrayContent.clear();
  return arrayContent;
}

// Remove all duplicates from a list.
List removeDuplicatesFromList(List arrayContent) {
  arrayContent.toSet().toList();
  return arrayContent;
}

// Change the value of a certain item in an array at a certain index.
List changeContentAtIndex(List arrayContent, index, value) {
  arrayContent[index] = value;
  return arrayContent;
}
