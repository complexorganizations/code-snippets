import * as url from "url"

function main(): void {
    // Get the query from a given url.
    console.log(getQueryFromURL("https://www.example.com?query=true"))
}

main()

// Get the query from a given url.
function getQueryFromURL(givenURL: string): string | null {
    return new URL(givenURL).search
}
