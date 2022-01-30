import * as crypto from "crypto"

function main(): void {
    // Get the sha3-512 of a string
    console.log(getSHA3512OfString("Hello World!"))
}

main()

// Get the sha3-512 of a string
function getSHA3512OfString(givenValue: string): string {
    return crypto.createHash("sha3-512").update(givenValue).digest("hex")
}
