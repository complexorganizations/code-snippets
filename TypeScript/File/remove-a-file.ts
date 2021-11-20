import * as fs from "fs"

function main(): void {
    // Remove a file.
    removeAFile("assets/remove/README.md");
}

main()

// Remove a file from the file system.
function removeAFile(filePath: string): void {
    fs.unlinkSync(filePath);
}