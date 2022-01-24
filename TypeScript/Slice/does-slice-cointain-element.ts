function main(): void {
    // Create a slice of strings
    let randomValues: string[] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
    // Check if the slice contains the element "c"
    console.log(doesSliceContainElement(randomValues, "c"))
}

main()

// Check if a given slice contains a given element
function doesSliceContainElement(slice: string[], element: string): boolean {
    for (let i: number = 0; i < slice.length; i++) {
        if (slice[i] === element) {
            return true
        }
    }
    return false
}