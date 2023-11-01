function main(): void {
    // Check if string contains a substring
    console.log(stringContainsSubstring("Hello World", "World"))
}

main()

// Check if a given string contains a substring and return a boolean
function stringContainsSubstring(content: string, substring: string): boolean {
    return content.includes(substring)
}