import * as url from "url"

function main(): void {
    // Get the origin from a URL
    console.log(getOriginFromUrl("https://www.example.com"))
}

main()

// Get the origin from a URL
function getOriginFromUrl(givenURL: string): string {
    return new URL(givenURL).origin
}