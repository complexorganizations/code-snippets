function main() {
    var content = "Hello, World!"
    // Check if the string is empty
    if (isEmpty(content)) {
        console.log("Empty")
    } else {
        console.log("Not Empty")
    }
    // Check if a string contains a substring
    if (contains(content, "Hello")) {
        console.log("Contains Hello")
    } else {
        console.log("Does not contain Hello")
    }
    // Split a string and return it
    var splitted = split(content, ",")
    console.log(splitted)
    // Convert a string to lowercase
    var lowercase = toLowerCase(content)
    console.log(lowercase)
    // Convert a string to uppercase
    var uppercase = toUpperCase(content)
    console.log(uppercase)
    // Trim a string
    var trimmed = trim(content)
    console.log(trimmed)
    // Check if a string includes a substring
    if (includes(content, "Hello")) {
        console.log("Includes Hello")
    } else {
        console.log("Does not include Hello")
    }
    // Check if two strings are equal
    if (equals(content, "Hello, World!")) {
        console.log("Equal")
    } else {
        console.log("Not Equal")
    }
    // Reverse a string
    var reversed = reverse(content)
    console.log(reversed)
    // Randomize a string
    var randomized = randomize(content)
    console.log(randomized)
    // Escape a string with backslash
    var currentString = "My Name is \"John\""
    console.log(currentString)
    // find and replace
    console.log(findAndReplace(currentString, "John", "Adam"))
}

main()

// Check if the string is empty
function isEmpty(str) {
    return str.length == 0
}

// Check if a string contains a substring
function contains(str, substr) {
    return str.indexOf(substr) != -1
}

// Split a string and return it
function split(str, delimiter) {
    return str.split(delimiter)
}

// Convert a string to lowercase
function toLowerCase(str) {
    return str.toLowerCase()
}

// Convert a string to uppercase
function toUpperCase(str) {
    return str.toUpperCase()
}

// Trim a string
function trim(str) {
    return str.trim()
}

// Check if a string includes a substring
function includes(str, substr) {
    return str.includes(substr)
}

// Check if two strings are equal
function equals(str1, str2) {
    return str1 == str2
}

// Reverse a string
function reverse(str) {
    return str.split("").reverse().join("")
}

// Randomize a string
function randomize(str) {
    var chars = str.split("")
    var random = ""
    for (var i = 0; i < chars.length; i++) {
        var index = Math.floor(Math.random() * chars.length)
        random += chars[index]
    }
    return random
}

// find and replace
function findAndReplace(oldString, searchString, newString) {
    return oldString.replace(searchString, newString)
}