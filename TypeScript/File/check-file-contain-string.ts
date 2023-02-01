import * as fs from "fs"

function main(): void {
    // Check if a file contains a string
    console.log(doesFileContainString("assets/valid/valid-json.json", "John"))
}

main()

// Check if a file contains a string and return boolean
function doesFileContainString(filePath: string, searchString: string): boolean {
    return fs.readFileSync(filePath, "utf-8").includes(searchString)
}