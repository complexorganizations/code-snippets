function main(): void {
    // Create an slice with some elements
    var randomSlice: string[] = ["e", "d", "c", "b", "a"]
    // Sort the slice, print the slice
    console.log(sortTheSlice(randomSlice))
}

main()


// Sort a slice of strings and than return the sorted slice.
function sortTheSlice(originalSlice: string[]): string[] {
    return originalSlice.sort()
}
