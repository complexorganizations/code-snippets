function main(): void {
    // Create a slice of ints
    let randomValues: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    // Get the biggest int in the slice
    console.log(getBiggestIntInSlice(randomValues))
}

main()

// Get the biggest int in a slice of ints
function getBiggestIntInSlice(slice: number[]): number {
    let biggestInt: number = slice[0]
    for (let i: number = 1; i < slice.length; i++) {
        if (slice[i] > biggestInt) {
            biggestInt = slice[i]
        }
    }
    return biggestInt
}