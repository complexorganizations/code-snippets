import * as path from "path"

function main(): void {
    // Get the basename of a given file
    console.log(getBasenameFromPath("/assets/valid/valid.txt"))
}

main()

// Get the basename of a given file
function getBasenameFromPath(givenPath: string): string {
    return path.basename(givenPath)
}
