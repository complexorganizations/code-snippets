// Import the libraries needed to use the HMAC and encoding functions
import "dart:convert";
import "dart:core";
import "package:crypto/crypto.dart";

// Define the main function
void main() {
  // Call the getHMACMessageAuthentication function and print the result
  print(getHMACMessageAuthentication("Hello, World!", "password"));
}

// Define the function that generates the HMAC message authentication code
Digest getHMACMessageAuthentication(
  final String content,
  final String password,
) {
  // Encode the password in UTF-8 format
  final List<int> passwordBytes = utf8.encode(password);
  
  // Create an HMAC object using the SHA-256 algorithm and the password bytes
  final Hmac hmac = Hmac(sha256, passwordBytes);

  // Encode the content string in UTF-8 format
  final List<int> contentBytes = utf8.encode(content);

  // Compute the HMAC for the content string using the password HMAC object
  final Digest digest = hmac.convert(contentBytes);

  // Return the resulting digest as a Digest object
  return digest;
}
