// Create an array of strings
function array() {
    let fruits: string[] = ["Apple", "Orange", "Banana"];
    // Create an array of numbers
    let numbers: number[] = [1, 2, 3];
    // Create an array of booleans
    let truths: boolean[] = [true, false, true];
    // loop over the array
    for (let i = 0; i < fruits.length; i++) {
        console.log(fruits[i]);
    }
}

// Remove the first item from the array
function removeFirst() {
    let fruits: string[] = ["Apple", "Orange", "Banana"];
    fruits.shift();
    console.log(fruits);
}

// Remove the last item from the array
function removeLast() {
    let fruits: string[] = ["Apple", "Orange", "Banana"];
    fruits.pop();
    console.log(fruits);
}

// Add an item to the start of the array
function addFirst() {
    let fruits: string[] = ["Apple", "Orange", "Banana"];
    fruits.unshift("Cherry");
    console.log(fruits);
}

// Add an item to the end of the array
function addLast() {
    let fruits: string[] = ["Apple", "Orange", "Banana"];
    fruits.push("Cherry");
    console.log(fruits);
}