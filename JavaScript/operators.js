function main() {
    var a = 1
    var b = 1
    var c = 2
    var d = 3
    if (a == b) {
        console.log("a == b")
    }
    // && is the logical AND operator
    if (a == b && c == d) {
        console.log("a == b && c == d")
    }
    // || is the logical OR operator
    if (a == b || c == d) {
        console.log("a == b || c == d")
    }
    // ! is the logical NOT operator
    if (!(a == b)) {
        console.log("!(a == b)")
    }
}

main()