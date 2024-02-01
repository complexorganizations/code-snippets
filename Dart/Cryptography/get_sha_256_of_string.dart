import "dart:convert";  // import the 'dart:convert' library which provides encoding and decoding of JSON, UTF-8, and base64 formats.
import "dart:core";    // import the 'dart:core' library which provides the core built-in types, such as String, int, bool, etc.
import "package:crypto/crypto.dart";  // import the 'crypto' package which provides cryptographic functions, such as SHA, MD5, HMAC, etc.

void main() {
  // Print the SHA-256 hash of the string "Hello, World!" to the console.
  print(getSHA256OfString("Hello, World!"));
}

// A function that returns the SHA-256 hash of a given string.
Digest getSHA256OfString(final String content) {
  // Encode the given string as UTF-8, and compute its SHA-256 hash.
  return sha256.convert(utf8.encode(content));
}
