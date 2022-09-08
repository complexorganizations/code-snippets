import "dart:core";

void main() {
  // Parse a url scheme.
  print(getURLScheme("http://www.example.com"));
}

// Parse a url scheme from a given url and return it.
String getURLScheme(final String url) {
  return Uri.parse(url).scheme;
}
