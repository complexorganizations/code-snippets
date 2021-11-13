function main(): void {
    // Create a slice
    var slice: string[] = ["a", "b", "c", "d", "e"]
    // Remove an element from the slice
    var newSlice: string[] = removeElementFromSlice(slice, "d")
    // Print the slice
    console.log(newSlice)
}

main()

// Remove an element from the provided slice and return the new slice.
function removeElementFromSlice(slice: string[], element: string): string[] {
    var index: number = slice.indexOf(element)
    if (index > -1) {
        slice.splice(index, 1)
    }
    return slice
}