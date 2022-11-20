function main(): void {
    // Check if the string is empty
    console.log(isStringEmpty("Hello World"))
}

main()

// Check if a given string is empty and return a boolean
function isStringEmpty(content: string): boolean {
    return content.length == 0
}