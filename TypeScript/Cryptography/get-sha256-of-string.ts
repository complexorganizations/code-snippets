import * as crypto from "crypto"

function main(): void {
    // Get the sha256 of a string
    console.log(getSha256OfString("Hello World!"))
}

main()

// Get the sha256 of a string
function getSha256OfString(givenValue: string): string {
    return crypto.createHash("sha256").update(givenValue).digest("hex")
}
