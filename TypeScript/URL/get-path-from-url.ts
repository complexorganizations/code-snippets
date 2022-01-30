import * as url from "url"

function main(): void {
    // Get the path from a given url.
    console.log(getPathFromURL("https://www.example.com/assets/images/logo.png"))
}

main()

// Get the path from a given url.
function getPathFromURL(givenURL: string): string | null {
    return new URL(givenURL).pathname
}