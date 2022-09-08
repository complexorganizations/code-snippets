function main(): void {
    // Create a new map.
    var randomMap: Map<string, string> = new Map([
        ["key1", "value1"],
        ["key2", "value2"]
    ])
    // Check if the map contains a specific key and return a boolean.
    console.log(doesMapContainKey(randomMap, "key1"))
}

main()

// Check if the map contains a specific key and return a boolean.
function doesMapContainKey(originalMap: Map<string, string>, key: string): boolean {
    return originalMap.has(key)
}