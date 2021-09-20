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