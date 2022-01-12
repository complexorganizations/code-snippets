import "dart:core";

void main() {
  // Get url authority
  print(getURLAuthority("https://www.example.com"));
}

// Get the authority of a given url.
String getURLAuthority(final String url) {
  return Uri.parse(url).authority;
}
