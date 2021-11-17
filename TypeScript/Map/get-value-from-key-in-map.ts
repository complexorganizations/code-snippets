function main(): void {
    // Create a new map with the given key and value.
    var randomMap: Map<string, string> = new Map<string, string>()
    // Add the given key and value to the map.
    randomMap.set("key", "value")
    // Get the value of the given key in the map.
    console.log(getKeyFromMap(randomMap, "key"))
}

main()

// Get the value of a given key in a map and return it.
function getKeyFromMap(originalMap: Map<string, string>, key: string): string | undefined {
    return originalMap.get(key)
}