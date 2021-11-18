import * as fs from "fs"

function main(): void {
    // Remove a directory.
    removeDirectory("foo/")
}

// Remove a directory.
function removeDirectory(path: string): void {
    fs.rmdirSync(path)
}