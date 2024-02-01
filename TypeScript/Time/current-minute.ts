function main(): void {
    // Print the current minute.
    console.log(getCurrentMinute())
}

main()

// Get the current minute in the hour.
function getCurrentMinute(): number {
    return new Date().getMinutes()
}