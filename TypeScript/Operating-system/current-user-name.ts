import * as os from "os"

function main(): void {
    // Print the current user name
    console.log(getCurrentUserName())
}

main()

// Get the current operating system user name
function getCurrentUserName(): string {
    return os.userInfo().username
}