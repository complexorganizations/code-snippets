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