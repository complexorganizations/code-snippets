import * as crypto from "crypto"

function main(): void {
    // Generate a random int between 0 and max
    console.log(generateRandomInt(10))
}

main()

// Generate a random int between 0 and max
function generateRandomInt(max: number): number {
    return crypto.randomInt(max)
}