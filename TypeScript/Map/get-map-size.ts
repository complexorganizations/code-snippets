function main(): void {
    // Create a map with two key-value pairs.
    var randomMap: Map<string, string> = new Map([
        ["key1", "value1"],
        ["key2", "value2"]
    ])
    // Get the size of the map.
    console.log(getMapSize(randomMap))
}

main()

// Get the size of the map and return it.
function getMapSize(originalMap: Map<string, string>): number {
    return originalMap.size
}