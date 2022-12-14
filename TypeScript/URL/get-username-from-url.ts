import * as url from "url"

function main(): void {
    // Get the username from a given url.
    console.log(getUsernameFromURL("https://user:pass@www.example.com"))
}

main()

// Get the username from a given url.
function getUsernameFromURL(givenURL: string): string | null {
    return new URL(givenURL).username
}