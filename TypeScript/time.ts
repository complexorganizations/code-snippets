function main(): void {
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
    sleep(10000).then((): void => console.log("Slept for 10 second"))
}

main()

// Get the current time.
function getCurrentDate(): Date {
    return new Date()
}

// Get the current seconds in the minute.
function getTimeInSeconds(): number {
    return new Date().getSeconds()
}

// Get the current minutes in the hour.
function getMinutesInHour(): number {
    return new Date().getMinutes()
}

// Get the current hour in the day.
function getHoursInDay(): number {
    return new Date().getHours()
}

// Get the current miliseconds in the second.
function getMilisecondsInSecond(): number {
    return new Date().getMilliseconds()
}

// Get the current month in the year.
function getMonthInYear(): number {
    return new Date().getMonth()
}

// Get the current year.
function getYear(): number {
    return new Date().getFullYear()
}

// Get the current day in the week.
function getDayInWeek(): number {
    return new Date().getDay()
}

// Get the current day in the month.
function getDayInMonth(): number {
    return new Date().getDate()
}

// Sleep for the given time in miliseconds.
function sleep(miliseconds: number): Promise<void> {
    return new Promise(resolve => setTimeout(resolve, miliseconds))
}
