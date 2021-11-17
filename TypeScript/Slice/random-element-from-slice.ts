import * as crypto from "crypto"

function main(): void {
    // Create a new slice
    let slice: string[] = ["a", "b", "c", "d", "e"]
    // Get a random element from the slice
    console.log(getRandomElementFromSlice(slice))
}

main()


// Get a random element from a slice of elements.
function getRandomElementFromSlice(originalSlice: string[]): string {
    return originalSlice[crypto.randomInt(originalSlice.length)]
}