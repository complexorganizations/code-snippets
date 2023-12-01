function main(): void {
    // Get the length of the string
    console.log(getStringLength("Hello World"))
}

main()

// Get the length of a given string and return it
function getStringLength(content: string): number {
    return content.length
}