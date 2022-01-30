import * as url from "url"

function main(): void {
    // Get the password from a given url.
    console.log(getPasswordFromURL("https://user:pass@www.example.com"))
}

main()

// Get the password from a given url.
function getPasswordFromURL(givenURL: string): string | null {
    return new URL(givenURL).password;
}