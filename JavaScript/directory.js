const fs = require("fs")
const path = require("path")
const os = require("os")

function main() {
    // Check if a directory exists
    console.log(directoryExists("/"))
    // Get the path to the current working directory
    console.log(getCurrentWorkingDirectory())
    // Get the name of the current working directory
    console.log(getCurrentWorkingDirectoryName())
    // Get the path to the current user home directory
    console.log(getUserHomeDirectory())
    // Get the path to the temporary directory
    console.log(getTempDirectory())
    // Get all the files in a directory
    console.log(getFilesInDirectory("/"))
    // Get all the folders in a directory
    console.log(getFoldersInDirectory("/src/"))
}

main()

// Check if a directory exists and return true or false
function directoryExists(directory) {
    if (fs.existsSync(directory)) {
        return true
    } else {
        return false
    }
}

// Get the current working directory
function getCurrentWorkingDirectory() {
    return process.cwd()
}

// Get the name of the current working directory
function getCurrentWorkingDirectoryName() {
    return process.cwd().split("\\").pop()
}

// Get the current user home directory
function getUserHomeDirectory() {
    return os.homedir()
}

// Get the temporary directory
function getTempDirectory() {
    return os.tmpdir()
}

// Get all the files in a directory
function getFilesInDirectory(directory) {
    return fs.readdirSync(directory)
}

// Get all the folders in a directory
function getFoldersInDirectory(directory) {
    return fs.readdirSync(directory).filter(file => fs.statSync(path.join(directory, file)).isDirectory())
}
