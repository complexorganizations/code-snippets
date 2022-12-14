function main(): void {
    // Get the current day
    console.log(getCurrentDateInMonth())
}

main()

// Get the current date of the month.
function getCurrentDateInMonth(): number {
    return new Date().getDate()
}