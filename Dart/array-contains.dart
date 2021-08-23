void main() {
  // Check if a array contains a specific value
  var content = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // True
  if (arrayContains(content, 2)) {
    print(true);
  }
  // False
  if (arrayContains(content, 11)) {
    print(true);
  } else {
    print(false);
  }
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
