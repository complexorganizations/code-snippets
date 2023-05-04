function main(): void {
    // Get the current hour.
    console.log(getHourInDay())
}

main()

// Get the current hour in the day.
function getHourInDay(): number {
    return new Date().getHours()
}