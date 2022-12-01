import * as crypto from "crypto"

function main(): void {
    // Get the sha512 of a string
    console.log(getSha512OfString("Hello World!"))
}

main()

// Get the sha512 of a string
function getSha512OfString(givenValue: string): string {
    return crypto.createHash("sha512").update(givenValue).digest("hex")
}
