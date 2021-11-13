function main(): void {
    // Create a slice.
    let randomData: string[] = ["a", "b", "c"]
    // Add an element to the slice.
    randomData = appendToSlice(randomData, "d")
    // Print the slice.
    console.log(randomData)
}

main()

// Add an element to the slice and return the new slice.
function appendToSlice(slice: string[], element: string): string[] {
    return slice.concat(element)
}