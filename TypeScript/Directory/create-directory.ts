import * as fs from "fs"

function main(): void {
    // Create a directory.
    createDirectory("foo/")
}

main()

// Create a directory.
function createDirectory(path: string): void {
    fs.mkdirSync(path)
}