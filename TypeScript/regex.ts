function main(): void {
    // Regex for finding the first word in a string
    var firstWord: RegExp = /\w+/
    // The first word in the string
    var first: RegExpExecArray | null = firstWord.exec("Hello World")
    console.log(first)
}

main()
