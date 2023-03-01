import * as path from "path"

function main(): void {
    // Get the file extension of a file and return it
    console.log(getFileExtension("assets/valid/valid-json.json"))
}

main()

// Get the file extension of a file and return it
function getFileExtension(filePath: string): string {
    return path.extname(filePath)
}