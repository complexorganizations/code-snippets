function main(): void {
    // Create a new map.
    var randomMap: Map<string, string> = new Map([
        ["key1", "value1"],
        ["key2", "value2"]
    ])
    // Remove a specific value from the map.
    console.log(removeValueFromMap(randomMap, "key1"))
}

main()

// Remove a specific value from the map and return the map.
function removeValueFromMap(originalMap: Map<string, string>, key: string): Map<string, string> {
    for (let keys of Array.from(originalMap.keys())) {
        if (keys == key) {
            originalMap.set(keys, "")
        }
    }
    return originalMap
}
