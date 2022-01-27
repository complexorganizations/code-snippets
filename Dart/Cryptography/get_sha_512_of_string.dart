import "dart:core";
import "dart:convert";
import "package:crypto/crypto.dart";

void main() {
  // Get the sha-512 of a given string.
  print(getSHA512OfString("Hello, World!"));
}

// Get the SHA-512 of a given string.
Digest getSHA512OfString(final String content) {
  return sha512.convert(utf8.encode(content));
}
