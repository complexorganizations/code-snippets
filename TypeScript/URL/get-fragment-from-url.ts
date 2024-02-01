import * as url from "url"

function main(): void {
    // Get the fragment from a given url.
    console.log(getFragmentFromURL("https://www.example.com#fragment"))
}

main()

// Get the fragment from a given url.
function getFragmentFromURL(givenURL: string): string | null {
    return new URL(givenURL).hash
}
