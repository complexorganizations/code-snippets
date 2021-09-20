function main() {
    // Add two strings together
    var c = add("Hello", " World");
    console.log(c);
    // Get the length of a string
    var d = getLength("Hello");
    console.log(d);
    // Get the first character of a string
    var e = first("Hello");
    console.log(e);
    // Get the last character of a string
    var f = last("Hello");
    console.log(f);
}

main()

// Add two strings together
function add(a, b) {
    return a + b;
}

// Get the length of a string
function getLength(s) {
    return s.length;
}

// Get the first character of a string
function first(s) {
    return s[0];
}

// Get the last character of a string
function last(s) {
    return s[s.length - 1];
}
