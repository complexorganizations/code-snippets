function main(): void {
    // Create a slice of strings.
    var randomSliceOne: string[] = ["a", "b", "c", "d", "e"]
    var randomSliceTwo: string[] = ["f", "g", "h", "i", "j"]
    // Combine the slices.
    console.log(combineSlices(randomSliceOne, randomSliceTwo))
}

main()

// Combine multiple slices into a single slice.
function combineSlices(sliceOne: string[], sliceTwo: string[]): string[] {
    return sliceOne.concat(sliceTwo)
}