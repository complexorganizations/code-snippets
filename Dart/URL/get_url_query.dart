import "dart:core";

void main() {
  // Get the query string from a given url.
  print(getQueryFromURL("http://www.example.com/?id=1"));
}

// Get the query from a given url.
String getQueryFromURL(final String url) {
    final Uri parsedURL = Uri.parse(url);
  return parsedURL.query;
}
