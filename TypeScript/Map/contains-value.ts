function main(): void {
    // Create a new map.
    var randomMap: Map<string, string> = new Map([
        ["key1", "value1"],
        ["key2", "value2"]
    ])
    // Check if the map contains a specific value and return a boolean.
    console.log(doesMapContainValue(randomMap, "value1"))
}

main()

// Check if the map contains a specific value and return a boolean.
function doesMapContainValue(originalMap: Map<string, string>, value: string): boolean {
    for (let value of Array.from(originalMap.values())) {
        if (value == value) {
            return true
        }
    }
    return false
}
