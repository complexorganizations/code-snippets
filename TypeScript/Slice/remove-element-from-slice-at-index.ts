function main(): void {
    // Create a slice of strings
    var randomSlice: string[] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
    // Remove element from slice at index
    console.log(removeElementFromSliceAtIndex(randomSlice, 3))
}

main()

// Remove element from slice at index
function removeElementFromSliceAtIndex(originalSlice: string[], index: number): string[] {
    return originalSlice.slice(0, index).concat(originalSlice.slice(index + 1))
}