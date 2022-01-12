import "dart:core";

void main() async {
  // Check if a given url is valid.
  print(isURLValid("https://www.example.com"));
}

// Check if a given url is valid.
bool isURLValid(final String url) {
  return Uri.parse(url).isAbsolute;
}
