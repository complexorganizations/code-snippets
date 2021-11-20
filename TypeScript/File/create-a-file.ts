import * as fs from "fs"

function main(): void {
    // Create a file.
    createAFile("assets/remove/pe6o4aBU8obdSHYtPe8F5jug459e527U");
}

main()

// Create a empty file.
function createAFile(filePath: string): void {
    fs.writeFileSync(filePath, "");
}