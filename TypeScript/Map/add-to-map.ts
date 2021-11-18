function main(): void {
    // Create a new map.
    var randomMap: Map<string, string> = new Map<string, string>()
    // Add a key-value pair to the map, Print the map.
    console.log(addKeyValueToMap(randomMap, "key", "value"))
}

main()

// Add an key-value pair to the map and return the map.
function addKeyValueToMap(map: Map<string, string>, key: string, value: string): Map<string, string> {
    return map.set(key, value)
}