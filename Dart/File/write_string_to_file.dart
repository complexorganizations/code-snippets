import "dart:core";
import "dart:io";

void main() {
  // Write string to a file
  writeStringToFile("assets/remove/89mmtNQY7hM7389f48Sw46ZhbRDNQ2h9/4bksX68uXV7v3FK69bf99KhjFz5aCY3P", "7Za2hebkUn5FYaqEiznJ5R65dJ77mgiy92KYzrMnVjdkyPWMqAQj5TmQRN8zw5Z9Ke7r23UsFEGCfx3gFmLavCuQYx46A8EskqWK4FWe894SNo2arVvWBMU79GvKLPtC");
}

// Write string to a file
void writeStringToFile(final String path, final String content) {
  File(path).writeAsString(content);
}
