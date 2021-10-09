function main(): void {
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
    console.log(getRandomElementFromMap(new Map([["a", "b"], ["b", "a"], ["c", "b"]])))
}

// Get a random string of length n
function getRandomString(provided_length: number): string {
    var text: string = ""
    var possible: string = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    for (var i: number = 0; i < provided_length; i++) {
        text += possible.charAt(Math.floor(Math.random() * possible.length))
    }
    return text
}

main()

// Get a random integer between min and max
function getRandomInt(min: number, max: number): number {
    return Math.floor(Math.random() * (max - min + 1)) + min
}

// Get a random float between min and max
function getRandomFloat(min: number, max: number): number {
    return Math.random() * (max - min) + min
}

// Get a random boolean
function getRandomBoolean(): boolean {
    return Math.random() >= 0.5
}

// Get a random element from an array
function getRandomElement(array: String[]): String {
    return array[Math.floor(Math.random() * array.length)]
}

// Get a random element from an map
function getRandomElementFromMap(map: Map<String, String>): String {
    var keys: String[] = Array.from(map.keys())
    return getRandomElement(keys)
}
