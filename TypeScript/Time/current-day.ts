function main(): void {
    // Get the current day
    console.log(getDayOfWeek())
}

main()

// Get the current day of the week.
function getDayOfWeek(): number {
    return new Date().getDay()
}