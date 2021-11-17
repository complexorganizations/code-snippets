import * as crypto from "crypto"

function main(): void {
    // Create a new slice
    let randomSlice: string[] = ["a", "b", "c", "d", "e"]
    // Randomize the order of the slice
    console.log(randomizeSlice(randomSlice))
}

main()

// Randomize the order of the values in the slice and return the slice.
function randomizeSlice(originalSlice: string[]): string[] {
    return originalSlice.sort((): number => {
        return crypto.randomBytes(1)[0] - 0x40
    })
}