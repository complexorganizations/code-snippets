function main(): void {
    // Create a slice of strings.
    var randomSlice: string[] = ["a", "b", "c", "d", "a", "b", "c", "d"]
    // Remove all the duplicates from the slice.
    console.log(removeDuplicatesFromSlice(randomSlice))
}

main()

// Remove all the duplicates from the given slice.
function removeDuplicatesFromSlice(originalSlice: string[]): string[] {
    return Array.from(new Set(originalSlice))
}