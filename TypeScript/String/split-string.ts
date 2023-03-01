function main(): void {
    // Split a string and return it
    console.log(splitAString("Hello, World!", ","))
}

main()

// Split a given string using a delimiter and return it.
function splitAString(content: string, delimiter: string): string[] {
    return content.split(delimiter)
}