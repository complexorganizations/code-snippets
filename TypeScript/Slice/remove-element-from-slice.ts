function main(): void {
    // Create a slice of strings
    var randomSlice: string[] = ["a", "b", "c", "d", "e"]
    // Remove an element from the slice, print the slice
    console.log(removeElementFromSlice(randomSlice, "d"))
}

main()

// Remove an element from the provided slice and return the new slice.
function removeElementFromSlice(originalSlice: string[], element: string): string[] {
    var index: number = originalSlice.indexOf(element)
    if (index > -1) {
        originalSlice.splice(index, 1)
    }
    return originalSlice
}