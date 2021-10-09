function main(): void {
    // Match a string against a regular expression
    const match: RegExpExecArray | null = regexMatch("Hello World", /\w+/)
    console.log(match)
}

main()


// Match a string against a regular expression
function regexMatch(str: string, regex: RegExp): RegExpExecArray | null {
    return regex.exec(str)
}
