import "dart:convert";  // import the 'dart:convert' library which provides encoding and decoding of JSON, UTF-8, and base64 formats.
import "dart:core";    // import the 'dart:core' library which provides the core built-in types, such as String, int, bool, etc.
import "package:crypto/crypto.dart";  // import the 'crypto' package which provides cryptographic functions, such as SHA, MD5, HMAC, etc.

void main() {
  // Verify that a given signature matches a given message.
  print(
    verifyHMACMessageAuthentication(
      "Hello, World!",    // The message to be authenticated.
      "password",         // The secret key used for HMAC.
      "507c4db58311630bdfa4ed5d4b8a562ca2f43370e03a3df411b3784a805681f7",  // The expected HMAC signature.
    ),
  );
}

// Verify that a given signature matches a given message.
bool verifyHMACMessageAuthentication(
  final String content,     // The message to be authenticated.
  final String password,    // The secret key used for HMAC.
  final String signature,   // The expected HMAC signature.
) {
  // Compute the HMAC-SHA256 signature of the message using the secret key.
  final String hmac = Hmac(sha256, utf8.encode(password)).convert(utf8.encode(content)).toString();
  
  // Return true if the computed HMAC signature matches the expected signature, false otherwise.
  return hmac == signature;
}
