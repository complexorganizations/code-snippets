import * as fs from "fs"

function main(): void {
    // Check if the directory exists
    console.log(directoryExists("assets/valid/j3U5uJY779L49q98MX86iFsxs2kY9ew3/"))
}

main()

// Check if a given directory exists
function directoryExists(path: string): boolean {
    return fs.existsSync(path)
}