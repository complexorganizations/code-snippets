function main(): void {
    // Create a slice with some elements
    var randomSLice: string[] = ["a", "", "b", "", "c", "", "d", "", "e"]
    // Remove all the empty elements from the slice
    var newSlice: string[] = removeEmptyElementsFromSlice(randomSLice)
    // Print the slice
    console.log(newSlice)
}

main()

// Remove all the empty elements from the provided slice and return the new slice.
function removeEmptyElementsFromSlice(originalSlice: string[]): string[] {
    var index: number = originalSlice.indexOf("")
    while (index > -1) {
        originalSlice.splice(index, 1)
        index = originalSlice.indexOf("")
    }
    return originalSlice
}