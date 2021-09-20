const fs = require("fs")
const os = require("os");

function main() {
    // Check if a directory exists
    console.log(directoryExists("/"))
    // Get the path to the current working directory
    console.log(getCurrentWorkingDirectory())
    // Get the name of the current working directory
    console.log(getCurrentWorkingDirectoryName())
    // Get the path to the current user home directory
    console.log(getUserHomeDirectory())
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