function main(): void {
    // Create a slice of ints
    let randomValues: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    // Get the smallest int in the slice
    console.log(getSmallestIntInSlice(randomValues))
}

main()

// Get the smallest int in a slice of ints
function getSmallestIntInSlice(slice: number[]): number {
    let smallestInt: number = slice[0]
    for (let i: number = 1; i < slice.length; i++) {
        if (slice[i] < smallestInt) {
            smallestInt = slice[i]
        }
    }
    return smallestInt
}