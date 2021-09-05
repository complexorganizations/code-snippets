function main() {
    var x = Math.random();
    var y = Math.random();
}

// Get a random string of length n
function getRandomString(n) {
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    for (var i = 0; i < n; i++) {
        text += possible.charAt(Math.floor(Math.random() * possible.length));
    }
    return text;
}

// Get a random integer between min and max
function getRandomInt(min, max) {
    return Math.floor(Math.random() * (max - min + 1)) + min;
}

// Get a random float between min and max
function getRandomFloat(min, max) {
    return Math.random() * (max - min) + min;
}

// Get a random boolean
function getRandomBoolean() {
    return Math.random() >= 0.5;
}

// Get a random element from an array
function getRandomElement(array) {
    return array[Math.floor(Math.random() * array.length)];
}

// Get a random element from an array, but not the same one twice in a row
function getRandomElementNotRepeated(array) {
    var element = getRandomElement(array);
    while (element == getRandomElement(array)) {
        element = getRandomElement(array);
    }
    return element;
}