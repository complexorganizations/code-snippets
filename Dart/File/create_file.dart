import "dart:core";
import "dart:io";

void main() {
  // Create a new empty file
  createAFile(
    "assets/remove/zVA3m3BEJ5wSe45v93Fi8788z4GoKjnW/p24hZP74742boG62zoHZWgi98HFC3ndR",
  );
}

// Create a new empty file
void createAFile(final String path) {
  File(path).createSync();
}
