import "dart:core";

void main() {
  // Get the port from a given url .
  print(getPortFromURL("https://www.example.com:8080"));
}

// Get the port from a given url.
int getPortFromURL(final String url) {
  return Uri.parse(url).port;
}
