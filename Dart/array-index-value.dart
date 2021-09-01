void main() {
   var content = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
   print(checkIndexInArray(content, 5));
}

int? checkIndexInArray(array, value) {
  for (int i = 0; i < array.length; i++) {
    if (array[i] == value) {
      return i;
    }
  }
  return null;
}