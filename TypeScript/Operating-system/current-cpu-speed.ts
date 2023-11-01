import * as os from "os"

function main(): void {
    // Get the current cpu speed.
    console.log(getCurrentCPUInfo())
}

main()

// Get the current cpu speed.
function getCurrentCPUInfo(): number {
    return os.cpus()[0].speed
}