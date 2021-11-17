import * as os from "os"

function main(): void {
    // Current system free memory
    console.log(getCurrentFreeMemory())
}

main()

// Get the current system free memory
function getCurrentFreeMemory(): number {
    return os.freemem()
}