function main(): void {
    var content: string = "Hello, World!"
    // Check if the string is empty
    console.log("Is the string empty? " + isStringEmpty(content))
    // Check if a string contains a substring
    console.log("Does the string contain 'World'? " + stringContainsSubString(content, "World"))
    // Split a string and return it
    console.log(splitAString(content, ","))
    // Convert a string to lowercase
    console.log(stringToLowerCase(content))
    // Convert a string to uppercase
    console.log(stringToUpperCase(content))
    // Trim a string
    console.log(trimAString(content))
    // Check if a string includes a substring
    console.log("Does the string include 'Hello'? " + stringIncludesSubString(content, "Hello"))
    // Check if two strings are equal
    console.log("Are the two strings the same? " + areTwoStringsTheSame(content, "Hello, World!"))
    // Reverse a string
    console.log("Reverse the string: " + reverseAString(content))
    // Randomize a string
    console.log("Randomize the string: " + randomizeAString(content))
    // Escape a string with backslash
    var currentString: string = "My Name is \"John\""
    console.log(currentString)
    // find and replace
    console.log(findAndReplaceInString(currentString, "John", "Adam"))
}

main()

// Check if the string is empty
function isStringEmpty(str: string): boolean {
    return str.length == 0
}

// Check if a string contains a substring
function stringContainsSubString(str: string, substr: string): boolean {
    return str.indexOf(substr) != -1
}

// Split a string and return it
function splitAString(str: string, delimiter: string): string[] {
    return str.split(delimiter)
}

// Convert a string to lowercase
function stringToLowerCase(str: string): string {
    return str.toLowerCase()
}

// Convert a string to uppercase
function stringToUpperCase(str: string): string {
    return str.toUpperCase()
}

// Trim a string
function trimAString(str: string): string {
    return str.trim()
}

// Check if a string includes a substring
function stringIncludesSubString(str: string, substr: string): boolean {
    return str.includes(substr)
}

// Check if two strings are equal
function areTwoStringsTheSame(str1: string, str2: string): boolean {
    return str1 == str2
}

// Reverse a string
function reverseAString(str: string): string {
    return str.split("").reverse().join("")
}

// Randomize a string
function randomizeAString(str: string): string {
    var chars: string[] = str.split("")
    var random: string = ""
    for (var i: number = 0; i < chars.length; i++) {
        var index: number = Math.floor(Math.random() * chars.length)
        random += chars[index]
    }
    return random
}

// find and replace
function findAndReplaceInString(oldString: string, searchString: string, newString: string): string {
    return oldString.replace(searchString, newString)
}
