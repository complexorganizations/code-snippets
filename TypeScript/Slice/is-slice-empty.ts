function main(): void {
    // Create a slice of strings.
    var randomSlice: string[] = ["a", "b", "c", "d", "e"]
    // Check if the slice is empty.
    console.log(isSliceEmpty(randomSlice))
}

main()

// Check if the given slice is empty.
function isSliceEmpty(originalSlice: string[]): boolean {
    return originalSlice.length == 0
}