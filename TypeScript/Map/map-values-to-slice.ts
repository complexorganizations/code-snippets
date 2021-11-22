function main(): void {
    // Create a new map and add values to it.
    var randomMap: Map<string, string> = new Map([
        ["key1", "value1"],
        ["key2", "value2"]
    ]);
    // Turn all the values inside the map into a slice
    console.log(mapValuesToSlice(randomMap))
}

main()

// Turn all the values in an map into a slice
function mapValuesToSlice(originalMap: Map<string, string>): string[] {
    var mapValues: string[] = []
    for (var value of originalMap.values()) {
        mapValues.push(value)
    }
    return mapValues
}