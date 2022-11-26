import * as fs from "fs"

function main(): void {
    // Get the size of a given path in bytes
    console.log(getFileSize("assets/valid/j3U5uJY779L49q98MX86iFsxs2kY9ew3/README.md"))
}

main()

// Get the size of a given file in bytes
function getFileSize(path: string): number {
    return fs.statSync(path).size
}