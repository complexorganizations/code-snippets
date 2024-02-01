import * as os from "os"

function main(): void {
    // Get the current architecture
    console.log(getCurrentArchitecture())
}

main()

// Get the current system architecture
function getCurrentArchitecture(): string {
    return os.arch()
}