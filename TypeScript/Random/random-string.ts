import * as crypto from "crypto"

function main(): void {
    console.log(generateRandomString(5))
}

main()

// Generate a random string of the given length and return it.
function generateRandomString(length: number): string {
    return crypto.randomBytes(length).toString("hex")
}