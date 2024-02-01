function main(): void {
    // inverse cosine of number
    console.log(inverseCosineOfNumber(1))
}

main()

// get the inverse cosine of number and return the result
function inverseCosineOfNumber(number: number): number {
    return Math.acos(number)
}
