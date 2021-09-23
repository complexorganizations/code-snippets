function main() {
    // Create an array of numbers
    var numbers = [3, 1, 2, 5, 4];
    console.log(numbers);
    // Sort the array
    sortArray(numbers);
    console.log(numbers);
    // Remove the first value of the array
    removeFirstFromArray(numbers);
    console.log(numbers);
    // Remove the last value of the array
    removeLastFromArray(numbers);
    console.log(numbers);
    // Remove a value from the array
    removeFromArray(numbers, 3);
    console.log(numbers);
    // Get the index value of a value in an array
    console.log(getIndexOfValue(numbers, 4));
    // Remove all the duplicate values from an array
    console.log(removeDuplicates(numbers));
    // Get the first value in the array
    console.log(getFirstValue(numbers));
    // Get the last value in the array
    console.log(getLastValue(numbers));
    // Check if the array contains a certain value
    console.log(containsValue(numbers, 2));
    // Check if the array is empty
    console.log(isEmpty(numbers));
    // Get the length of an array
    console.log(getLength(numbers));
    // Add a value to the end of an array
    addToEndOfArray(numbers, 6);
    console.log(numbers);
    // Add a value to the start of an array
    addToStartOfArray(numbers, 0);
    console.log(numbers);
    // Get the middle value of an array
    console.log(getMiddleValue(numbers));
    // Get element at a specific index of an array
    console.log(getElementAtIndex(numbers, 2));
}

main()

// Sort an array
function sortArray(array) {
    array.sort();
}

// Remove the first value of the array
function removeFirstFromArray(array) {
    array.shift();
}

// Remove the last value of the array
function removeLastFromArray(array) {
    array.pop();
}

// Remove a value from the array
function removeFromArray(array, value) {
    var index = array.indexOf(value);
    if (index > -1) {
        array.splice(index, 1);
    }
}

// Get the index value of a value in an array
function getIndexOfValue(array, value) {
    return array.indexOf(value);
}

// Remove all the duplicate values from an array
function removeDuplicates(array) {
    var uniqueArray = [];
    for (var i = 0; i < array.length; i++) {
        if (uniqueArray.indexOf(array[i]) == -1) {
            uniqueArray.push(array[i]);
        }
    }
    return uniqueArray;
}

// Get the first value of an array
function getFirstValue(array) {
    return array[0];
}

// Get the last value of an array
function getLastValue(array) {
    return array[array.length - 1];
}

// Get the middle value of an array
function getMiddleValue(array) {
    return array[Math.floor(array.length / 2)];
}

// Get element at a specific index of an array
function getElementAtIndex(array, index) {
    return array[index];
}

// Check if an array contains a value
function containsValue(array, value) {
    return array.indexOf(value) > -1;
}

// Check if the array is empty
function isEmpty(array) {
    return array.length == 0;
}

// Get the length of an array
function getLength(array) {
    return array.length;
}

// Add a value to the end of an array
function addToEndOfArray(array, value) {
    array.push(value);
}

// Add a value to the start of an array
function addToStartOfArray(array, value) {
    array.unshift(value);
}
