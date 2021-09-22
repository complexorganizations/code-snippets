function main() {
    // Get a random string of length 10
    console.log(getRandomString(10))
    // Get a random integer between 0 and 10
    console.log(getRandomInt(0, 10))
    // Get a random float between 0 and 10
    console.log(getRandomFloat(0, 10))
    // Get a random boolean
    console.log(getRandomBoolean())
    // Get a random element from an array
    console.log(getRandomElement(["a", "b", "c"]))
    // Get a random element from an map
    console.log(getRandomElementFromMap({ a: 1, b: 2, c: 3 }))
}

// Get a random string of length n
function getRandomString(n) {
    var text = ""
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    for (var i = 0; i < n; i++) {
        text += possible.charAt(Math.floor(Math.random() * possible.length))
    }
    return text
}

main()

// Get a random integer between min and max
function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min
}

// Get a random float between min and max
function getRandomFloat(min, max) {
    return Math.random() * (max - min) + min
}

// Get a random boolean
function getRandomBoolean() {
    return Math.random() >= 0.5
}

// Get a random element from an array
function getRandomElement(array) {
    return array[Math.floor(Math.random() * array.length)]
}

// Get a random element from an map
function getRandomElementFromMap(map) {
    var keys = Object.keys(map)
    return map[keys[Math.floor(Math.random() * keys.length)]]
}
