function main(): void {
    // Print the current year
    console.log(getCurrentYear())
}

main()


// Get the current year from the system
function getCurrentYear(): number {
    return new Date().getFullYear()
}