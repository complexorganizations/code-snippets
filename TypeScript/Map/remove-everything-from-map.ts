function main(): void {
    // Create a new map and add some values
    var randomMap: Map<string, string> = new Map([
        ["key1", "value1"],
        ["key2", "value2"]
    ])
    // Remove everything from the map
    console.log(removeEverythingFromMap(randomMap))
}

main()

// Remove everything from map and return the map
function removeEverythingFromMap(originalMap: Map<string, string>): Map<string, string> {
    originalMap.clear()
    return originalMap
}