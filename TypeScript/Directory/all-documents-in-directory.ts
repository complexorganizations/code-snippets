import * as fs from "fs"

function main(): void {
    // Get all the documents in a given directory
    console.log(getAllDocumentsInDirectory("assets/valid/j3U5uJY779L49q98MX86iFsxs2kY9ew3/"))
}

main()

// Get all the documents in a given directory
function getAllDocumentsInDirectory(directory: string): string[] {
    return fs.readdirSync(directory)
}