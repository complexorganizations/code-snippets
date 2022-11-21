import * as os from "os"

function main(): void {
    // Get the current network interfaces
    console.log(getCurrentNetworkInterfaces())
}

main()

// Get the current system network interfaces
function getCurrentNetworkInterfaces(): any {
    return os.networkInterfaces()
}