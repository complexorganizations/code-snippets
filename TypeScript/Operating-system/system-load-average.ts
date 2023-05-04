import * as os from "os"

function main(): void {
    // Get the current system load average
    console.log(getCurrentLoadAverage())
}

main()

// Get the current system load average
function getCurrentLoadAverage(): number[] {
    return os.loadavg()
}