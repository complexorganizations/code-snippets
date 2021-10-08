const path = require("path")
const fs = require("fs")

function main() {
    // Get the current working file name
    console.log(getCurrentFileName())
    // Get the current path in the system
    console.log(getCurrentPath())
    // Get the file extension of a file and return it
    console.log(getFileExtension("JavaScript/file.js"))
    // Check if a file is hidden
    console.log(isHidden("JavaScript/directory.js"))
    // Read the content of the file and return it.
    console.log(readFile("JavaScript/function.js"))
    // Read the content of a file and check if it contains a specific string.
    console.log(readFileContains("JavaScript/errors.js", "javascript"))
    // Check the permissions of a file
    console.log(checkPermissions("JavaScript/http-client.js"))
    // Create a file
    createFile("JavaScript/o726H2NMjuVwHOPmjEPP.js")
    // Remove a file
    removeFile("JavaScript/o726H2NMjuVwHOPmjEPP.js")
    // Write to a file
    writeToFile("write-to-file.txt", "Hello World!")
    // Append and than write to a file
    appendAndWriteToFile("write-to-file.txt", "Hello World!")
}

main()

// Get the current working file name
function getCurrentFileName() {
    return path.basename(process.argv[1])
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
    return fileName.charAt(0) == "."
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

// Create a file
function createFile(filePath) {
    fs.writeFileSync(filePath, "")
}

// Remove a file
function removeFile(filePath) {
    fs.unlinkSync(filePath)
}

// Write some content to a specific file
function writeToFile(fileName, content) {
    fs.writeFile(fileName, content, function (err) {
        if (err) {
            return err
        }
    })
}

// Append and write to a file
function appendAndWriteToFile(fileName, content) {
    fs.appendFile(fileName, content, function (err) {
        if (err) {
            return err
        }
    })
}
