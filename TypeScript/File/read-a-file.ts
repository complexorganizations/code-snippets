import * as fs from "fs"

function main(): void {
    // Read a file.
    console.log(readAFile("assets/valid/valid-json.json"))
}

main()

// Read a file and return it as a string
function readAFile(filePath: string): string {
    return fs.readFileSync(filePath, "utf-8")
}