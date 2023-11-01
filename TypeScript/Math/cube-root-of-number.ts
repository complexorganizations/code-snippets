function main(): void {
    // Get the square root of a given number and return the result
    console.log(cubeRootOfNumber(100))
}

main()

// Get the cube root of a given number and return the result
function cubeRootOfNumber(number: number): number {
    return Math.cbrt(number)
}