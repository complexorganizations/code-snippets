const path = require("path")
const fs = require("fs")

function main() {
    // Get the current working file name
    console.log(getCurrentFileName())
    // Get the current path in the system
    console.log(getCurrentPath())
    // Get the file extension of a file and return it
    console.log(getFileExtension("file.js"))
    // Check if a file is hidden
    console.log(isHidden("file.js"))
    // Read the content of the file and return it.
    console.log(readFile("file.js"))
    // Read the content of a file and check if it contains a specific string.
    console.log(readFileContains("file.js", "javascript"))
    // Check the permissions of a file
    console.log(checkPermissions("file.js"))
}

main()

// Get the current working file name
function getCurrentFileName() {
    return path.basename(__filename)
}

// Get the current path in the system
function getCurrentPath() {
    return process.cwd() + "\\" + getCurrentFileName()
}

// Get the file extension of a file and return it
function getFileExtension(fileName) {
    return path.extname(fileName)
}

// Check if a file is hidden
function isHidden(fileName) {
    return fileName.charAt(0) === "."
}

// Read the content of the file and return it.
function readFile(filePath) {
    return fs.readFileSync(filePath, "utf-8")
}

// Read the content of a file and check if it contains a specific string.
function readFileContains(filePath, string) {
    return readFile(filePath).includes(string)
}

// Check the permissions of a file
function checkPermissions(filePath) {
    return fs.statSync(filePath).mode
}
