import * as url from "url"

function main(): void {
    // Check if a given url is valid.
    console.log(checkURLValidation("https://www.example.com"))
}

main()

// Check if a given url is valid.
function checkURLValidation(givenURL: string): boolean {
    try {
        new URL(givenURL)
        return true
    } catch (error) {
        return false
    }
}