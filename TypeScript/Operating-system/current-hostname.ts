import * as os from "os"

function main(): void {
    // Get the current hostname
    console.log(getCurrentHostname())
}

main()


// Get the current system's hostname
function getCurrentHostname(): string {
    return os.hostname()
}