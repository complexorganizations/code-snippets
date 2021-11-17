function main(): void {
    // Create a new map.
    var randomMap: Map<string, string> = new Map<string, string>()
    // Add a key-value pair to the map.
    randomMap.set("key1", "value1")
    // Remove a key-value pair from the map.
    console.log(removeKeyValuePairFromMap(randomMap, "key1"))
}

main()

// Remove a key-value pair from the map and return the map.
function removeKeyValuePairFromMap(originalMap: Map<string, string>, key: string): Map<string, string> {
    originalMap.delete(key)
    return originalMap
}