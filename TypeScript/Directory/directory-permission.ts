import * as fs from "fs"

function main(): void {
    // Get all the directories in a given directory
    console.log(getDirectoryPermission("assets/valid/"))
}

main()

// Get the permission of a given directory.
function getDirectoryPermission(directory: string): number {
    return fs.statSync(directory).mode
}