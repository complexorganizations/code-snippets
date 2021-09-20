function main() {
    // Get a random string
    console.log(getRandomString(10));
    // Random number generator
    console.log(getRandomInt(1, 10));
    // Get a random value from an array
    console.log(getRandomValueFromArray(["a", "b", "c"]));
    // Get a random value from an string
    console.log(getRandomValue("Hello, World!"));
}

main()

// Get a random string
function getRandomString(length) {
    var result = "";
    var characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    var charactersLength = characters.length;
    for (var i = 0; i < length; i++) {
        result += characters.charAt(Math.floor(Math.random() * charactersLength));
    }
    return result;
}

// Random number generator
function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

// Get a random value from an array
function getRandomValueFromArray(array) {
    return array[Math.floor(Math.random() * array.length)];
}

// Get a random value from an string
function getRandomValue(string) {
    return string[Math.floor(Math.random() * string.length)];
}