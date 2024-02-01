import "dart:core";

void main() {
  // Get the host of a given url.
  print(getURLHost("https://www.example.com"));
}

// Get the host of a given url.
String getURLHost(final String url) {
  return Uri.parse(url).host;
}
