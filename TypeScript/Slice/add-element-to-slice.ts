function main(): void {
    // Create a slice.
    let randomData: string[] = ["a", "b", "c"]
    // Add an element to the slice, print the slice.
    console.log(addElementToSlice(randomData, "d"))
}

main()

// Add an element to the slice and return the new slice.
function addElementToSlice(originalSlice: string[], element: string): string[] {
    return originalSlice.concat(element)
}