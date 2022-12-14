import * as os from "os"

function main(): void {
    // Get the ammount of cpu cores in the system
    console.log(getCurrentCPUCount())
}

// Get the ammount of cpu cores in the system
function getCurrentCPUCount(): number {
    return os.cpus().length
}

main()