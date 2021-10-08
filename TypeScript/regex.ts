function main(): void {
    // Regex for finding the first word in a string
    var firstWord = /\w+/
    // The first word in the string
    var first = firstWord.exec("Hello World")
    console.log(first)
}

main()
