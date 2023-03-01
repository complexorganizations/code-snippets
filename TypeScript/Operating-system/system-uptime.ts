import * as os from "os"

function main(): void {
    // Get the current system uptime.
    console.log(getCurrentUptime())
}

main()

// Get the current system uptime.
function getCurrentUptime(): number {
    return os.uptime()
}