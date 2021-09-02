import "dart:math";
import "dart:convert";

void main() {
  int characterLimit = 100;
  print(getRandString(characterLimit));
  print(getRandString(100));
}

// Get a random string of a given length.
String getRandString(int len) {
  var random = Random.secure();
  var values = List<int>.generate(len, (i) => random.nextInt(255));
  return base64UrlEncode(values);
}
