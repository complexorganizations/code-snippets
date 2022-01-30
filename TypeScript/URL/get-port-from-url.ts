import * as url from "url"

function main(): void {
    // Get the port from a given url.
    console.log(getPortFromURL("https://www.example.com:8080"));
}

main()

// Get the port from a given url.
function getPortFromURL(givenURL: string): string | null {
    return new URL(givenURL).port;
}