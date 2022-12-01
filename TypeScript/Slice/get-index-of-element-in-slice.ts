function main(): void {
    // Create a slice.
    var randomSlice: string[] = ["a", "b", "c", "d", "e"]
    // Get the index of an element in a slice.
    console.log(getIndexOfElementInSlice(randomSlice, "c"))
}

main()

// Get the index of an element in a slice.
function getIndexOfElementInSlice(originalSlice: string[], element: string): number {
    return originalSlice.indexOf(element)
}