import * as crypto from "crypto"

function main(): void {
    // Generate a random UUID.
    console.log(uniqueUUIDGenerator())
}

main()

// Generate a random UUID and return it as a string.
function uniqueUUIDGenerator(): string {
    return randomStringGenerator(4) + "-" + randomStringGenerator(2) + "-" + randomStringGenerator(2) + "-" + randomStringGenerator(2) + "-" + randomStringGenerator(6)
}

// Generate a random string of the specified length.
function randomStringGenerator(length: number): string {
    return crypto.randomBytes(length).toString("hex")
}