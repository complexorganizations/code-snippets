function main() {
    switchStatement()
    moreSwitchExample()
}

main()

// A switch statement is a way to execute different code based on different conditions.
function switchStatement() {
    var date = new Date()
    var day = date.getDay()
    switch (day) {
        case 0:
            console.log("Sunday")
            break
        case 1:
            console.log("Today is Monday")
            break
        case 2:
            console.log("Today is Tuesday")
            break
        case 3:
            console.log("Today is Wednesday")
            break
        case 4:
            console.log("Today is Thursday")
            break
        case 5:
            console.log("Today is Friday")
            break
        case 6:
            console.log("Today is Saturday")
            break
        default:
            console.log("Invalid day")
    }
}

// More examples of switch statements
function moreSwitchExample() {
    var name: string = "John"
    switch (name) {
        case "John":
            console.log("Hello John")
            break
        case "Mary":
            console.log("Hello Mary")
            break
        case "Tom":
            console.log("Hello Tom")
            break
        default:
            console.log("Hello Stranger")
    }
}
