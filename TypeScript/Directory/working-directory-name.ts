import * as process from "process"

function main(): void {
    // Get the current working directory name only.
    console.log(getCurrentWorkingDirectoryNameOnly())
}

main()

// Get the current working directory name only.
function getCurrentWorkingDirectoryNameOnly(): string | undefined {
    return process.cwd().split("\\").pop()
}