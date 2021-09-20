// Create a if statement that checks if the value of the variable age is less than 18. If it is, print "You are not old enough to view this page" to the console.
function main() {
    var age = 15
    if (age < 18) {
        console.log("You are not old enough to view this page")
    } else if (age == 18) {
        console.log("You are old enough to view this page")
    } else {
        console.log("You are old enough to view this page")
    }
    // Test a if statement inside a function
    console.log(testIfStatement("test"))
    console.log(testIfStatement("news"))
}

main()

// If statement inside a function
function testIfStatement(content) {
    if (content == "test") {
        return true
    } else {
        return false
    }
}