function main(): void {
    // Match a string against a regular expression
    console.log(regexMatch("Hello World", /\w+/))
}

main()

// Match a string against a regular expression
function regexMatch(content: string, regex: RegExp): RegExpExecArray | null {
    return regex.exec(content)
}