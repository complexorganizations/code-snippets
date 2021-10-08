import fs from "fs"
import path from "path"

function main(): void {
    // Get the current working file name
    console.log(getCurrentFileName())
    // Get the current path in the system
    console.log(getCurrentPath())
    // Get the file extension of a file and return it
    console.log(getFileExtension("file.js"))
    // Check if a file is hidden
    console.log(isHidden("directory.js"))
    // Read the content of the file and return it.
    console.log(readFile("function.js"))
    // Read the content of a file and check if it contains a specific string.
    console.log(readFileContains("errors.js", "javascript"))
    // Check the permissions of a file
    console.log(checkPermissions("http-client.js"))
    // Create a file
    createFile("o726H2NMjuVwHOPmjEPP.js")
    // Remove a file
    removeFile("o726H2NMjuVwHOPmjEPP.js")
    // Write to a file
    writeToFile("write-to-file.txt", "Hello World!")
    // Append and than write to a file
    appendAndWriteToFile("write-to-file.txt", "Hello World!")
}

main()

// Get the current working file name
function getCurrentFileName(): string {
    return path.basename(process.argv[1])
}

// Get the current path in the system
function getCurrentPath(): string {
    return path.dirname(process.argv[1]) + "/" + path.basename(process.argv[1])
}

// Get the file extension of a file and return it
function getFileExtension(fileName: string): string {
    return path.extname(fileName)
}

// Check if a file is hidden
function isHidden(fileName: string): boolean {
    return fileName.charAt(0) == "."
}

// Read the content of the file and return it.
function readFile(filePath: string): string {
    return fs.readFileSync(filePath, "utf-8")
}

// Read the content of a file and check if it contains a specific string.
function readFileContains(filePath: string, provided_string: string): boolean {
    return readFile(filePath).includes(provided_string)
}

// Check the permissions of a file
function checkPermissions(filePath: string): number {
    return fs.statSync(filePath).mode
}

// Create a file
function createFile(filePath: string): void {
    fs.writeFileSync(filePath, "")
}

// Remove a file
function removeFile(filePath: string): void {
    fs.unlinkSync(filePath)
}

// Write some content to a specific file
function writeToFile(fileName: string, content: string): void {
    fs.writeFile(fileName, content, function (err) {
        if (err) {
            return err
        }
    })
}

// Append and write to a file
function appendAndWriteToFile(fileName: string, content: string): void {
    fs.appendFile(fileName, content, function (err) {
        if (err) {
            return err
        }
    })
}
