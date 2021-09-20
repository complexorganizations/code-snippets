function main() {
    // Create a new array of objects.
    var people = [
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
    console.log("Before sort: " + people)
    sortArray(people)
    console.log("After sort: " + people)
}

main()

// Sort the array of objects.
function sortArray(array) {
    return array.sort()
}