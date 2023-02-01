import * as os from "os"

function main(): void {
    // Get the current system total memory
    console.log(getCurrentTotalMemory())
}

main()

// Get the current system total memory
function getCurrentTotalMemory(): number {
    return os.totalmem()
}