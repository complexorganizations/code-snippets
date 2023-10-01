function main(): void {
    // Check if two strings are not the same and return a boolean
    console.log(checkTwoItemsAreNotEqual("Hello", "Hello"))
}

main()

// Check if two strings are not the same and return a boolean
function checkTwoItemsAreNotEqual(primary: string, secondary: string): boolean {
    return primary != secondary
}