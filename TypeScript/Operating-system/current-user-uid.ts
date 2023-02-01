import * as os from "os"

function main(): void {
    // Get the current users uid
    console.log(getCurrentUserUid())
}

main()

// Get the current users uid
function getCurrentUserUid(): number {
    return os.userInfo().uid
}