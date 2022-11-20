import * as url from "url"

function main(): void {
    // Get the hostname from a given url.
    console.log(getHostnameFromURL("https://www.example.com"))
}

main()

// Get the hostname from a given url.
function getHostnameFromURL(givenURL: string): string | null {
    return new URL(givenURL).hostname
}