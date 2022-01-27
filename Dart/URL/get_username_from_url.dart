import "dart:core";

void main() {
  // Get the username from a url.
  print(getUsernameFromURL("https://user:password@www.example.com"));
}

// Get the username from a url.
String getUsernameFromURL(final String url) {
  return Uri.parse(url).userInfo.split(":")[0];
}
