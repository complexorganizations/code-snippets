function main() {
    // Create a array of int
    var user_generated_array: string[] = [
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
    console.log(joinArray(user_generated_array, "-"))
    // Sort the array
    console.log(sortArray(user_generated_array))
    // Get the first value
    console.log(getFirstValue(user_generated_array))
    // Get the last value
    console.log(getLastValue(user_generated_array))
    // Get the length of the array
    console.log(getLength(user_generated_array))
    // Randomly pick a value from the array
    console.log(getRandomValue(user_generated_array))
    // Randomize the order of the values in the array
    console.log(randomizeArray(user_generated_array))
    // Remove the first element in the array.
    console.log(removeFirstElement(user_generated_array))
    // Remove the last element in the array
    console.log(removeLastElement(user_generated_array))
    // Remove a value from the array
    console.log(removeValue(user_generated_array, "y"))
    // Reverse the order of the values in the array
    console.log(reverseArray(user_generated_array))
    // Get the index of a value in the array
    console.log(getIndex(user_generated_array, "x"))
    // Remove all duplicates from an array
    console.log(removeDuplicates(user_generated_array))
    // Combine two arrays
    console.log(combineArrays(user_generated_array, ["six", "seven", "eight"]))
    // Check if the array is empty
    console.log(isArrayEmpty(user_generated_array))
    // Check if the array is not empty
    console.log(isNotEmptyArray(user_generated_array))
    // Remove all the content from the array
    console.log(removeAllContent(user_generated_array))
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
    return array.sort(function() {
        return 0.5 - Math.random()
    })
}

// Remove the first element in the array and return the array.
function removeFirstElement(array: string[]) {
    array.shift()
    return array
}

// Remove the last element in the array and return the array.
function removeLastElement(array: string[]) {
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
