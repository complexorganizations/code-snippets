function main(): void {
    // Create a new slice.
    var randomSlice: string[] = ["a", "b", "c"]
    // Reverse the slice, print the slice.
    console.log(reverseTheSlice(randomSlice))
}

main()


// Reverse the order of the values in the slice.
function reverseTheSlice(originalSlice: string[]): string[] {
    return originalSlice.reverse()
}