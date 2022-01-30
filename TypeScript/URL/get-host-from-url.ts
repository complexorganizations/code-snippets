import * as url from "url"


function main(): void {
    // Get the host from a given url.
    console.log(getHostFromURL("https://www.example.com"));
}

main()

// Get the host from a given url.
function getHostFromURL(givenURL: string): string | null {
    return new URL(givenURL).host;
}
