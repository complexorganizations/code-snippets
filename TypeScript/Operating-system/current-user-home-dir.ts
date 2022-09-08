import * as os from "os"

function main(): void {
    // Get the current users home directory
    console.log(getCurrentUserHomeDir())
}

main()

// Get the current users home directory
function getCurrentUserHomeDir(): string {
    return os.homedir()
}