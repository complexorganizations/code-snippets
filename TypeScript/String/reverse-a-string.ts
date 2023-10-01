function main(): void {
    // Reverse a string and return it
    console.log(reverseAString("Hello World"))
}

main()

// Reverse a string and return it
function reverseAString(content: string): string {
    return content.split("").reverse().join("")
}