function main(): void {
    // Create a slice of ints
    let randomValues: number[] = [1, 2, 3, 5, 6, 7, 8, 9, 10]
    // Get the missing int in the slice
    console.log(getMissingIntInSlice(randomValues))
}

main()

// Get the missing int in a slice of ints
function getMissingIntInSlice(slice: number[]): number {
    let smallestInt: number = getSmallestIntInSlice(slice)
    let biggestInt: number = getBiggestIntInSlice(slice)
    let missingInt: number = slice[0]
    for (let i: number = smallestInt; i <= biggestInt; i++) {
        if (!doesSliceContainElement(slice, i)) {
            missingInt = i
        }
    }
    return missingInt
}

// Check if a given slice contains a given element
function doesSliceContainElement(slice: number[], element: number): boolean {
    for (let i: number = 0; i < slice.length; i++) {
        if (slice[i] === element) {
            return true
        }
    }
    return false
}

// Get the smallest int in a slice of ints
function getSmallestIntInSlice(slice: number[]): number {
    let smallestInt: number = slice[0]
    for (let i: number = 1; i < slice.length; i++) {
        if (slice[i] < smallestInt) {
            smallestInt = slice[i]
        }
    }
    return smallestInt
}

// Get the biggest int in a slice of ints
function getBiggestIntInSlice(slice: number[]): number {
    let biggestInt: number = slice[0]
    for (let i: number = 1; i < slice.length; i++) {
        if (slice[i] > biggestInt) {
            biggestInt = slice[i]
        }
    }
    return biggestInt
}