function main(): void {
    // Get the current milliseconds in the second.
    console.log(getCurrentMillisecond())
}

main()

// Get the current milliseconds in the second.
function getCurrentMillisecond(): number {
    return new Date().getMilliseconds()
}