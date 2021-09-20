function main() {
    // Create a array of int
    var array = [5, 3, 1, 2, 4]
    console.log(array)
    // Sort the array
    console.log(sortArray(array))
    // Get the first value
    console.log(getFirstValue(array))
    // Get the last value
    console.log(getLastValue(array))
    // Get the length of the array
    console.log(getLength(array))
    // Randomly pick a value from the array
    console.log(getRandomValue(array))
    // Randomize the order of the values in the array
    console.log(randomizeArray(array))
    // Add a value to the end of the array
    console.log(addToEnd(array, 6))
    // Add a value to the start of the array
    console.log(addToStart(array, 0))
    // Remove the first value in the array
    console.log(removeFirstValue(array))
    // Remove the last value in the array
    console.log(removeLastValue(array))
    // Remove a value from the array
    console.log(removeValue(array, 3))
    // Remove all instances of a value from the array
    console.log(removeAllValues(array, 3))
    // Remove all the content from the array
    console.log(removeAllContent(array))
}

main()

// Sort all the data in the array, and return the sorted array
function sortArray(array) {
    array.sort()
    return array
}

// Get the first value in the array and return it
function getFirstValue(array) {
    return array[0]
}

// Get the last value in the array and return it.
function getLastValue(array) {
    return array[array.length - 1]
}

// Get the length of the array and return it.
function getLength(array) {
    return array.length
}

// Randomly pick a value from the array and return it.
function getRandomValue(array) {
    return array[Math.floor(Math.random() * array.length)]
}

// Randomize the order of the values in the array and return the array.
function randomizeArray(array) {
    var newArray = []
    while (array.length > 0) {
        var randomIndex = Math.floor(Math.random() * array.length)
        var randomValue = array.splice(randomIndex, 1)
        newArray.push(randomValue[0])
    }
    return newArray
}

// Add a value to the end of the array and return the array.
function addToEnd(array, value) {
    array.push(value)
    return array
}

// Add a value to the start of the array and return the array.
function addToStart(array, value) {
    array.unshift(value)
    return array
}

// Remove the first value in the array and return the array.
function removeFirstValue(array) {
    array.shift()
    return array
}

// Remove the last value in the array and return the array.
function removeLastValue(array) {
    array.pop()
    return array
}

// Remove a value from the array and return the array.
function removeValue(array, value) {
    var index = array.indexOf(value)
    if (index > -1) {
        array.splice(index, 1)
    }
    return array
}

// Remove all instances of a value from the array and return the array.
function removeAllValues(array, value) {
    var index = array.indexOf(value)
    while (index > -1) {
        array.splice(index, 1)
        index = array.indexOf(value)
    }
    return array
}

// Remove all the content from the array and return the array.
function removeAllContent(array) {
    array.length = 0
    return array
}