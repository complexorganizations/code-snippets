const fs = require("fs")

// Main function
function main() {
  // Write to a file
  writeToFile("write-to-file.txt", "Hello World!")
  // Append to a file
  appendToFile("write-to-file.txt", "Hello World!")
}

main()

// Write some content to a specific file
function writeToFile(fileName, content) {
  fs.writeFile(fileName, content, function (err) {
    if (err) {
      return err
    }
  })
}

// Append and write to a file
function appendToFile(fileName, content) {
  fs.appendFile(fileName, content, function (err) {
    if (err) {
      return err
    }
  })
}