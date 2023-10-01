import * as process from "process"

function main(): void {
    // Exit the application with a success exit code.
    exitApplication(0)
}

main()

// Close the application with the given exit code.
function exitApplication(exitCode: number): void {
    process.exit(exitCode)
}