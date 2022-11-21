import "dart:core";

void main() {
  // Get the password from a url.
  print(getPasswordFromURL("https://user:password@www.example.com"));
}

// Get the password from a url.
String getPasswordFromURL(final String url) {
  return Uri.parse(url).userInfo.split(":")[1];
}
