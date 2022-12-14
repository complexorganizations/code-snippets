function main(): void {
    // Get the current second.
    console.log(getCurrentSecond())
}

main()

// Get the current second and return it.
function getCurrentSecond(): number {
    return new Date().getSeconds()
}