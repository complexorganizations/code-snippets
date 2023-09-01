import * as path from "path"

function main(): void {
    // Get the directory path of a given path
    console.log(getDirnameFromPath("/assets/valid/valid.txt"))
}

main()

// Get the directory path of a given path
function getDirnameFromPath(givenPath: string): string {
    return path.dirname(givenPath)
}
