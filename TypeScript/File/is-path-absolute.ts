import * as path from "path"

function main(): void {
    // Check if a given path is absolute
    console.log(isPathAbsolute("/assets/valid/valid.txt"))
}

main()

// Check if a given path is absolute
function isPathAbsolute(givenPath: string): boolean {
    return path.isAbsolute(givenPath)
}
