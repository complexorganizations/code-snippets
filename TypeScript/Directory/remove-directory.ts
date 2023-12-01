import * as fs from "fs"

function main(): void {
    // Remove a directory and all its contents.
    removeDirectory("assets/remove/89mmtNQY7hM7389f48Sw46ZhbRDNQ2h9/")
}

// Remove a directory and all its contents.
function removeDirectory(path: string): void {
    fs.rmdirSync(path)
}
