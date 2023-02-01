function main(): void {
    // Create a new map and add values to it.
    var randomMap: Map<string, string> = new Map([
        ["key1", "value1"],
        ["key2", "value2"]
    ])
    // Add a key-value pair to the map, Print the map.
    console.log(addKeyValueToMap(randomMap, "key3", "value3"))
}

main()

// Add an key-value pair to the map and return the map.
function addKeyValueToMap(map: Map<string, string>, key: string, value: string): Map<string, string> {
    return map.set(key, value)
}