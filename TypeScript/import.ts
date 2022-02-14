// A simple import statement that imports a function from another file
import * as os from "os"
// Import a function from a package.
import { CpuInfo } from "os"

function main(): void {
    // Get the current user name
    getCurrentUser()
    // Get the current cpu count
    getCurrentCPUCount()
}

main()

// Using the os package to get the current user name
function getCurrentUser(): void {
    console.log(os.userInfo().username)
}

// Using the os pakaage to get the current system cpu count
function getCurrentCPUCount(): CpuInfo[] {
    return os.cpus()
}
