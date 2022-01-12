import "dart:core";

void main() {
  // Get url authority
  print(getURLAuthority("https://www.example.com"));
}

// Get the authority of a given url.
String getURLAuthority(final String url) {
  final Uri parsedURL = Uri.parse(url);
  return parsedURL.authority;
}
