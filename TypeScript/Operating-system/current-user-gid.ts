import * as os from "os"

function main(): void {
    // Get the current user's group id
    console.log(getCurrentUserGid())
}

main()

// Get the current user's group id
function getCurrentUserGid(): number {
    return os.userInfo().gid
}