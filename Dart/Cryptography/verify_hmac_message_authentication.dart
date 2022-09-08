import "dart:convert";
import "dart:core";
import "package:crypto/crypto.dart";

void main() {
  // Verify that a given signature matches a given message.
  print(
    verifyHMACMessageAuthentication(
      "Hello, World!",
      "password",
      "507c4db58311630bdfa4ed5d4b8a562ca2f43370e03a3df411b3784a805681f7",
    ),
  );
}

// Verify that a given signature matches a given message.
bool verifyHMACMessageAuthentication(
  final String content,
  final String password,
  final String signature,
) {
  return Hmac(sha256, utf8.encode(password))
          .convert(utf8.encode(password))
          .toString() ==
      signature;
}
