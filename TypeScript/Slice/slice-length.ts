function main(): void {
    // Create a slice of random strings.
    const randomSlice: string[] = ["a", "b", "c", "d", "e"]
    // Get the length of the slice.
    console.log(getSliceLength(randomSlice))
}

main()

// Get the length of a given slice.
function getSliceLength(originalSlice: string[]): number {
    return originalSlice.length
}