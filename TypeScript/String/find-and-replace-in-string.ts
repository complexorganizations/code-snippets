function main(): void {
    // Find and replace in a string
    console.log(findAndReplaceInString("My Name is John", "John", "Adam"))
}

main()

// Find a substring in a string and replace it with another string.
function findAndReplaceInString(content: string, find: string, replace: string): string {
    return content.replace(find, replace)
}