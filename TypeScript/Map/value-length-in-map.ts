function main(): void {
    // Create a new map.
    var randomMap: Map<string, string> = new Map<string, string>()
    // Add some values to the map.
    randomMap.set("key1", "value1")
    randomMap.set("key2", "value2")
    randomMap.set("key3", "value3")
    // Get the length of all the values in the map.
    console.log(getValueLength(randomMap))
}

main()

// Get the length of all the values in the map.
function getValueLength(originalMap: Map<string, string>): number {
    let counter: number = 0
    for (let value of originalMap.values()) {
        counter = counter + 1
    }
    return counter
}