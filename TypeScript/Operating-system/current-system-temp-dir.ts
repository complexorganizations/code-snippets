import * as os from "os"

function main(): void {
    // Print the current system temp directory
    console.log(getSystemTempDir())
}

main()

// Get the current system temp directory
function getSystemTempDir(): string {
    return os.tmpdir()
}