import * as fs from "fs"
import * as path from "path"

function main(): void {
    // Get all the directories in a given directory
    console.log(getAllDirectoryInDirectory("assets/valid/"))
}

main()


// Get all the directories in a given directory
function getAllDirectoryInDirectory(directory: string): string[] {
    return fs.readdirSync(directory).filter(file => fs.statSync(path.join(directory, file)).isDirectory())
}