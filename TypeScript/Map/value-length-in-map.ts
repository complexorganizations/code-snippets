function main(): void {
    // Create a new map.
    var randomMap: Map<string, string> = new Map([
        ["key1", "value1"],
        ["key2", "value2"]
    ])
    // Get the length of all the values in the map.
    console.log(getValueLength(randomMap))
}

main()

// Get the length of all the values in the map.
function getValueLength(originalMap: Map<string, string>): number {
    let counter: number = 0
    for (let value of Array.from(originalMap.values())) {
        counter = counter + 1
    }
    return counter
}
