import * as crypto from "crypto"

function main(): void {
    // Create a new slice
    let slice: string[] = ["a", "b", "c", "d", "e"]
    // Randomize the order of the slice
    console.log(randomizeSlice(slice))
}

main()

// Randomize the order of the values in the slice and return the slice.
function randomizeSlice(slice: string[]): string[] {
    // Randomize the order of the slice
    for (let i: number = 0; i < slice.length; i++) {
        // Create a random index
        let randomIndex: number = crypto.randomInt(slice.length)
        // Swap the values at the current index and the random index
        let temp: string = slice[i]
        slice[i] = slice[randomIndex]
        slice[randomIndex] = temp
    }
    // Return the slice
    return slice
}