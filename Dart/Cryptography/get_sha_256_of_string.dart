import "dart:convert";
import "package:crypto/crypto.dart";

void main() {
  // Get the sha-256 of a given string.
  print(getSHA256OfString("Hello, World!"));
}

// Get the SHA-256 of a given string.
Digest getSHA256OfString(final String content) {
  return sha256.convert(utf8.encode(content));
}
