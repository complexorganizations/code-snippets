import * as crypto from "crypto"

function main(): void {
    // Generate a random boolean value
    console.log(generateRandomBoolean())
}

main()

// Generate a random bool and than return it.
function generateRandomBoolean(): boolean {
    return crypto.randomInt(2) == 0
}