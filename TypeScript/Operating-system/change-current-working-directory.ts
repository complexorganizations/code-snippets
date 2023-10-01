import * as process from "process"

function main(): void {
    // Change the current working directory.
    changeDirectory("/")
}

main()

// Change the current working directory.
function changeDirectory(path: string): void {
    process.chdir(path)
}