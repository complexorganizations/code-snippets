function main(): void {
    // Create a new map and add values to it.
    var randomMap: Map<string, string> = new Map([
        ["key1", "value1"],
        ["key2", "value2"]
    ])
    // Turn all the keys inside the map into a slice
    console.log(mapKeysToSlice(randomMap))
}

main()

// Turn all the keys inside the map into a slice
function mapKeysToSlice(originalMap: Map<string, string>): string[] {
    var mapKeys: string[] = []
    for (var key of originalMap.keys()) {
        mapKeys.push(key)
    }
    return mapKeys
}