function main() {
    // Get the current time.
    console.log(getCurrentDate())
    // Get the current time in seconds.
    console.log(getTimeInSeconds())
    // Get the current time in minutes.
    console.log(getMinutesInHour())
    // Get the current time in hours.
    console.log(getHoursInDay())
    // Get the current time in miliseconds.
    console.log(getMilisecondsInSecond())
    // Get the current time in month.
    console.log(getMonthInYear())
    // Get the current time in year.
    console.log(getYear())
    // Get the current time in day.
    console.log(getDayInWeek())
    // Get the current time in day.
    console.log(getDayInMonth())
    // Sleep for the given time in miliseconds.
    sleep(10000).then(() => console.log("Slept for 10 second"))
}

main()

// Get the current time.
function getCurrentDate() {
    return new Date()
}

// Get the current seconds in the minute.
function getTimeInSeconds() {
    return new Date().getSeconds()
}

// Get the current minutes in the hour.
function getMinutesInHour() {
    return new Date().getMinutes()
}

// Get the current hour in the day.
function getHoursInDay() {
    return new Date().getHours()
}

// Get the current miliseconds in the second.
function getMilisecondsInSecond() {
    return new Date().getMilliseconds()
}

// Get the current month in the year.
function getMonthInYear() {
    return new Date().getMonth()
}

// Get the current year.
function getYear() {
    return new Date().getFullYear()
}

// Get the current day in the week.
function getDayInWeek() {
    return new Date().getDay()
}

// Get the current day in the month.
function getDayInMonth() {
    return new Date().getDate()
}

// Sleep for the given time in miliseconds.
function sleep(miliseconds: number) {
    return new Promise(resolve => setTimeout(resolve, miliseconds))
}
