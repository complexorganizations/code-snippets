import * as process from "process"

function main(): void {
    // Print the current working directory.
    console.log(getCurrentWorkingDirectory())
}

main()

// Get the current working directory
function getCurrentWorkingDirectory(): string {
    return process.cwd()
}
