import "dart:core";

void main() {
  // Get the fragment string from a given url.
  print(getURLFragment("http://www.example.com/#1"));
}

// Get the fragment from a given url.
String getURLFragment(final String url) {
  return Uri.parse(url).fragment;
}
