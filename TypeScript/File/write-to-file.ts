import * as fs from "fs"

function main(): void {
    // Write a string to a given file.
    writeToFile("assets/remove/4G8i6e782HNrDUdh65WS4bp2eKCk5D5i", "Hello, World!")
}

main()

// Write a string to a given file.
function writeToFile(filePath: string, content: string): void {
    fs.writeFileSync(filePath, content)
}