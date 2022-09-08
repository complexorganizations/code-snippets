import "dart:core";

void main() {
  // Get the path from a given url.
  print(getUrlPath("http://www.example.com/invalid"));
}

// Get the path from a given url.
String getUrlPath(final String url) {
  return Uri.parse(url).path;
}
