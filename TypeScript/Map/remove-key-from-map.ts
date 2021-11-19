function main(): void {
    // Create a new map.
    var randomMap: Map<string, string> = new Map([
        ["key1", "value1"],
        ["key2", "value2"]
    ])
    // Remove a specific value from the map.
    console.log(removeKeyFromMap(randomMap, "key1", "value1"))
}

main()

// Remove a specific key from the map and return the map.
function removeKeyFromMap(originalMap: Map<string, string>, key: string, value: string): Map<string, string> {
    for (let keys of originalMap.keys()) {
        if (keys == key) {
            originalMap.set("", value)
        }
    }
    for (let value of originalMap.values()) {
        if (value == value) {
            originalMap.delete(key)
        }
    }
    return originalMap
}