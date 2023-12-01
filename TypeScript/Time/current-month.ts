function main(): void {
    // Print the current month
    console.log(getMonthInYear())
}

main()

// Get the current month of the year
function getMonthInYear(): number {
    return new Date().getMonth()
}