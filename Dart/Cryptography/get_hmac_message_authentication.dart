import "dart:convert";
import "dart:core";
import "package:crypto/crypto.dart";

void main() {
// Get the hmac message authentication
  print(getHMACMessageAuthentication("Hello, World!", "password"));
}

// Get the hmac message authentication
Digest getHMACMessageAuthentication(
  final String content,
  final String password,
) {
  return Hmac(sha256, utf8.encode(password)).convert(utf8.encode(password));
}
