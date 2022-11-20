import * as crypto from "crypto"

function main(): void {
    // Get the sha3-256 of a string
    console.log(getSHA3256OfString("Hello World!"))
}

main()

// Get the sha3-256 of a string
function getSHA3256OfString(givenValue: string): string {
    return crypto.createHash("sha3-256").update(givenValue).digest("hex")
}
