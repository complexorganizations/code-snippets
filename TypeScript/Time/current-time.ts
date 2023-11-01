function main(): void {
    // Get the current time.
    console.log(getCurrentDate())
}

main()

// Get the current time and return it.
function getCurrentDate(): Date {
    return new Date()
}