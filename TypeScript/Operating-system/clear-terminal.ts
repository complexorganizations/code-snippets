function main(): void {
    // Clear the terminal window.
    clearTerminal()
}

main()

// Clear all text from the terminal window.
function clearTerminal(): void {
    process.stdout.write("\x1Bc")
}
