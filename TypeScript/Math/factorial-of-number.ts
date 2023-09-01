function main(): void {
    // Get the factorial of a given number and return the result
    console.log(factorialOfNumber(5))
}

main()

// Get the factorial of a given number and return the result
function factorialOfNumber(content: number): number {
    let result: number = 1
    for (let i: number = 1; i <= content; i++) {
        result = result * i
    }
    return result
}