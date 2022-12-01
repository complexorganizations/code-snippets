import * as url from "url"

function main(): void {
    // Get the scheme from a given url.
    console.log(getSchemeFromURL("https://www.example.com"))
}

main()

// Get the scheme from a given url.
function getSchemeFromURL(givenURL: string): string | null {
    return new URL(givenURL).protocol
}