function main() {
    var text = "This is a string with a few words in it.";
    console.log(findAndReplace(text, "A", "This"));
}

main()

// find and replace
function findAndReplace(oldString, newString, searchString) {
    var newString = newString.replace(/\$/g, "\\$");
    var regExp = new RegExp(searchString, "g");
    return oldString.replace(regExp, newString);
}