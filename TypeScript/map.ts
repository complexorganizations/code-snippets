function main() {
    // Create a new map.
    var newMap = new Map()
    // Set some value to the map.
    newMap.set("Name", "John")
    newMap.set("Age", "30")
    newMap.set("Address", "123 Main St")
    newMap.set("Zip", "12345")
    newMap.set("City", "New York")
    newMap.set("State", "NY")
    newMap.set("Country", "USA")
    newMap.set("Phone", "123-456-7890")
    newMap.set("Email", "johndoe@example.com")
    // Print the whole map.
    console.log(newMap)
    // Get the value of the map.
    var name = newMap.get("Name")
    console.log(name)
    // Remove the value of the map.
    newMap.delete("Name")
    console.log(name)
    // Get the size of the map.
    var size = newMap.size
    console.log(size)
    // Check if the map contains a key.
    var contains = newMap.has("Name")
    console.log(contains)
    // Clear the map.
    newMap.clear()
}

main()

// Get the value of the map.
function getValue(currentMap: Map<string, string>, key: string) {
    return currentMap.get(key)
}

// Check if the map contains a key.
function containsKey(currentMap: Map<string, string>, key: string) {
    return currentMap.has(key)
}

// Remove a key and value from a map.
function removeKey(currentMap: Map<string, string>, key: string) {
    // Check if the map contains the key.
    if (currentMap.has(key)) {
        // Remove the key and value from the map.
        currentMap.delete(key)
    }
}

// Get the size of the map.
function getSize(currentMap: Map<string, string>) {
    return currentMap.size
}

// Remove all the key and value from a map.
function clearMap(currentMap: Map<string, string>) {
    currentMap.clear()
}
