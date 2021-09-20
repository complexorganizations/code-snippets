function main() {
    switchStatement()
}

main()

function switchStatement() {
    var date = new Date()
    var day = date.getDay()
    console.log(day)
    switch (day) {
        case "Monday":
            console.log("Today is Monday")
            break
        case "Tuesday":
            console.log("Today is Tuesday")
            break
        case "Wednesday":
            console.log("Today is Wednesday")
            break
        case "Thursday":
            console.log("Today is Thursday")
            break
        case "Friday":
            console.log("Today is Friday")
            break
        case "Saturday":
            console.log("Today is Saturday")
            break
        case "Sunday":
            console.log("Today is Sunday")
            break
        default:
            console.log("Invalid day")
    }
}
