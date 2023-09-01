function main(): void {
    // Check if a given string is whitespaces only.
    console.log(isStringWhiteSpacesOnly("           "))
}

main()

// Check if a given string is whitespaces only.
function isStringWhiteSpacesOnly(content: string): boolean {
    return content.trim().length == 0
}
