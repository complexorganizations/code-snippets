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
