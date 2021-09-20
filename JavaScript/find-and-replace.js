function main() {
    var text = "This is a string with a few words in it.";
    console.log(text)
    console.log(findAndReplace(text, "A", "This"));
}

main()

// find and replace
function findAndReplace(oldString, newString, searchString) {
    return oldString.replace(searchString, newString);
}