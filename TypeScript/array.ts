function main() {
    // Create a array of int
    var array: string[] = [
        "t",
        "b",
        "l",
        "y",
        "k",
        "i",
        "j",
        "c",
        "a",
        "e",
        "n",
        "d",
        "s",
        "m",
        "p",
        "f",
        "z",
        "r",
        "q",
        "w",
        "u",
        "v",
        "x",
        "o",
        "h",
        "g"
    ]
    // Join the array
    console.log(joinArray(array, "-"))
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
    console.log(addToEnd(array, "six"))
    // Add a value to the start of the array
    console.log(addToStart(array, "zero"))
    // Remove the first value in the array
    console.log(removeFirstValue(array))
    // Remove the last value in the array
    console.log(removeLastValue(array))
    // Remove a value from the array
    console.log(removeValue(array, "three"))
    // Remove all instances of a value from the array
    console.log(removeThisValue(array, "three"))
    // Reverse the order of the values in the array
    console.log(reverseArray(array))
    // Get the index of a value in the array
    console.log(getIndex(array, "three"))
    // Remove all duplicates from an array
    console.log(removeDuplicates(array))
    // Combine two arrays
    console.log(combineArrays(array, ["six", "seven", "eight"]))
    // Check if the array is empty
    console.log(isArrayEmpty(array))
    // Check if the array is not empty
    console.log(isNotEmptyArray(array))
    // Remove all the content from the array
    console.log(removeAllContent(array))
}

main()

// Join the array.
function joinArray(array: string[], separator: string) {
    return array.join(separator)
}

// Sort all the data in the array, and return the sorted array
function sortArray(array: string[]) {
    array.sort()
    return array
}

// Get the first value in the array and return it
function getFirstValue(array: string[]) {
    return array[0]
}

// Get the last value in the array and return it.
function getLastValue(array: string[]) {
    return array[array.length - 1]
}

// Get the length of the array and return it.
function getLength(array: string[]) {
    return array.length
}

// Randomly pick a value from the array and return it.
function getRandomValue(array: string[]) {
    return array[Math.floor(Math.random() * array.length)]
}

// Randomize the order of the values in the array and return the array.
function randomizeArray(array: string[]) {
    var newArray: string[] = []
    while (array.length > 0) {
        var randomIndex = Math.floor(Math.random() * array.length)
        var randomValue = array.splice(randomIndex, 1)
        newArray.push(randomValue[0])
    }
    return newArray
}

// Add a value to the end of the array and return the array.
function addToEnd(array: string[], value: string) {
    array.push(value)
    return array
}

// Add a value to the start of the array and return the array.
function addToStart(array: string[], value: string) {
    array.unshift(value)
    return array
}

// Remove the first value in the array and return the array.
function removeFirstValue(array: string[]) {
    for (var i = 0; i < array.length; i++) {
        if (i == 0) {
            // Remove the first value
        }
    }
    return array
}

// Remove the last value in the array and return the array.
function removeLastValue(array: string[]) {
    array.pop()
    return array
}

// Remove a value from the array and return the array.
function removeValue(array: string[], value: string) {
    var index = array.indexOf(value)
    if (index > -1) {
        array.splice(index, 1)
    }
    return array
}

// Remove all instances of a value from the array and return the array.
function removeThisValue(array: string[], value: string) {
    var index = array.indexOf(value)
    while (index > -1) {
        array.splice(index, 1)
        index = array.indexOf(value)
    }
    return array
}

// Remove all the content from the array and return the array.
function removeAllContent(array: string[]) {
    array.length = 0
    return array
}

// Reverse the order of the values in the array and return the array.
function reverseArray(array: string[]) {
    return array.reverse()
}

// Get the index of a value in the array and return it.
function getIndex(array: string[], value: string) {
    return array.indexOf(value)
}

// Remove all duplicates from an array and return the array.
function removeDuplicates(array: string[]) {
    var newArray: string[] = []
    for (var i = 0; i < array.length; i++) {
        if (newArray.indexOf(array[i]) == -1) {
            newArray.push(array[i])
        }
    }
    return newArray
}

// Combine two arrays and return the array.
function combineArrays(array1: string[], array2: string[]) {
    return array1.concat(array2)
}

// Check if the array is empty.
function isArrayEmpty(array: string[]) {
    return array.length == 0
}

// Check if the array is not empty.
function isNotEmptyArray(array: string[]) {
    return array.length != 0
}
