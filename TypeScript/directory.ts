import fs from "fs"
import os from "os"
import path from "path"

function main(): void {
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
    console.log(getFoldersInDirectory("/"))
    // Get the permissions of a folder
    console.log(getFolderPermissions("/"))
    // Get the size of a folder
    console.log(getFolderSize("/"))

}

main()

// Check if a directory exists and return true or false
function directoryExists(directory: string): boolean {
    if (fs.existsSync(directory)) {
        return true
    } else {
        return false
    }
}

// Get the current working directory
function getCurrentWorkingDirectory(): string {
    return process.cwd()
}

// Get the name of the current working directory
function getCurrentWorkingDirectoryName(): string | undefined{
    return process.cwd().split("\\").pop()
}

// Get the current user home directory
function getUserHomeDirectory(): string {
    return os.homedir()
}

// Get the temporary directory
function getTempDirectory(): string {
    return os.tmpdir()
}

// Get all the files in a directory
function getFilesInDirectory(directory: string): string[] {
    return fs.readdirSync(directory)
}

// Get all the folders in a directory
function getFoldersInDirectory(directory: string): string[] {
    return fs.readdirSync(directory).filter(file => fs.statSync(path.join(directory, file)).isDirectory())
}

// Get the permissions of a folder
function getFolderPermissions(directory: string): number {
    return fs.statSync(directory).mode
}

// Get the size of a folder
function getFolderSize(directory: string): number {
    return fs.statSync(directory).size
}