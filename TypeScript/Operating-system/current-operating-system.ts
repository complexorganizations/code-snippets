import * as os from "os"

function main(): void {
    // Get the current operating system
    console.log(getCurrentOperatingSystem())
}

main()

// Get the current operating system
function getCurrentOperatingSystem(): string {
    return os.platform()
}