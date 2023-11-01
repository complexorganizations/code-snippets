function main(): void {
    // Match a string against a regular expression
    console.log(checkStringMatchesRegex("Hello World", /\w+/))
}

main()

// Check if a string matches a regular expression and return a boolean
function checkStringMatchesRegex(content: string, regex: RegExp): boolean {
    return regex.test(content)
}
