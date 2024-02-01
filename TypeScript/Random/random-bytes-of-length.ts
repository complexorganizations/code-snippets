import * as crypto from "crypto"

function main(): void {
    // Generate a random byte array of the specified length
    console.log(randomBytesOfGivenLength(10))
}

main()

// Generate a random byte array of the specified length
function randomBytesOfGivenLength(givenLength: number): Buffer {
    return crypto.randomBytes(givenLength)
}
