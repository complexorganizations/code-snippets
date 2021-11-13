import * as crypto from "crypto"

function main() {
    // Generate a random number between 1 and 100
    console.log(randomIntBetween(1, 100))
}

main()

// Generate a random integer between min (inclusive) and max (exclusive)
function randomIntBetween(min: number, max: number): number {
    return crypto.randomInt(max - min) + min
}