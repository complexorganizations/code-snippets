function main() {
    // Get the current time.
    var now = new Date()
    console.log(now)
    // Get the current hour.
    var hour = now.getHours()
    console.log(hour)
    // Get the current minute.
    var minute = now.getMinutes()
    console.log(minute)
    // Get the current second.
    var second = now.getSeconds()
    console.log(second)
    // Get the current millisecond.
    var millisecond = now.getMilliseconds()
    console.log(millisecond)
    // Get the current day of the week.
    var day = now.getDay()
    console.log(day)
    // Get the current date.
    var date = now.getDate()
    console.log(date)
    // Get the current month.
    var month = now.getMonth()
    console.log(month)
    // Get the current year.
    var year = now.getFullYear()
    console.log(year)
    // Get the current timezone offset.
    var offset = now.getTimezoneOffset()
    console.log(offset)
}

main()