function main(): void {
    // Create a new slice.
    const randomSlice: string[] = ["a", "b", "c", "d", "e"]
    // Remove everything from slice.
    console.log(removeEverythingFromSlice(randomSlice))
}

main()

// Remove everything from slice and return the slice.
function removeEverythingFromSlice(originalSlice: string[]): string[] {
    while (originalSlice.length > 0) {
        originalSlice.pop()
    }
    return originalSlice
}