function main(): void {
    // Check if two strings are the same and return a boolean
    console.log(checkTwoItemsAreEqual("Hello", "Hello"))
}

main()

// Check if two strings are the same and return a boolean
function checkTwoItemsAreEqual(primary: string, secondary: string): boolean {
    return primary == secondary
}