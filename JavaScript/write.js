// Main function
function main() {
  writeToFile("write-to-file.txt", "Hello World!")
}

main()

// Write content to a file
function writeToFile(fileName, content) {
  fs.writeFile(fileName, content, function (err) {
    if (err) {
      return console.log(err)
    }
  })
}