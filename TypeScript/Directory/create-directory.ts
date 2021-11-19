import * as fs from "fs"

function main(): void {
    // Create a directory.
    createDirectory("assets/remove/pa6KQGV9x68ksDc933Fok73e76X2WEq8")
}

main()

// Create a directory.
function createDirectory(path: string): void {
    fs.mkdirSync(path)
}
