import * as os from "os"

function main(): void {
    // Get the current cpu info
    console.log(getCurrentCPUInfo())
}

main()

// Get the current cpu info
function getCurrentCPUInfo(): os.CpuInfo[] {
    return os.cpus()
}