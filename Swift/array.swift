// Get the first element of the array
func getFirstElement(array: [String]) -> String {
    return array[0]
}

// Get the last element of the array
func getLastElement(array: [String]) -> String {
    return array[array.count - 1]
}

// Append an element to the array
func appendElement(array: [String], element: String) -> [String] {
    return array + [element]
}

// Remove the first element of the array
func removeFirstElement(array: [String]) -> [String] {
    return Array(array[1..<array.count])
}

// Remove the last element of the array
func removeLastElement(array: [String]) -> [String] {
    return Array(array[0..<array.count - 1])
}

// Remove the element at the specified index
func removeElementAtIndex(array: [String], index: Int) -> [String] {
    return Array(array[0..<index] + array[index + 1..<array.count])
}

// Insert an element at the specified index
func insertElementAtIndex(array: [String], element: String, index: Int) -> [String] {
    return Array(array[0..<index] + [element] + array[index..<array.count])
}

// Replace the element at the specified index
func replaceElementAtIndex(array: [String], element: String, index: Int) -> [String] {
    return Array(array[0..<index] + [element] + array[index + 1..<array.count])
}

// Sort the array
func sortArray(array: [String]) -> [String] {
    return array.sorted()
}

// Reverse the array
func reverseArray(array: [String]) -> [String] {
    return array.reversed()
}

// Check if the array contains the specified element
func containsElement(array: [String], element: String) -> Bool {
    return array.contains(element)
}

// Get the lenght of the array
func getLength(array: [String]) -> Int {
    return array.count
}

// Count the number of elements that match the specified element
func countElement(array: [String], element: String) -> Int {
    return array.filter { $0 == element }.count
}

// Check if the array is empty
func isEmpty(array: [String]) -> Bool {
    return array.isEmpty
}

// Remove all duplicate elements from the array
func removeDuplicates(array: [String]) -> [String] {
    return Array(Set(array))
}

// Remove all elements from the array
func removeAllElements(array: [String]) -> [String] {
    return []
}

func main() {
    // Create a simple array
    let simpleArray = ["Hello", "World", "John", "Doe", "Jane", "Doe", "John", "Smith", "Jane", "Smith"]
    // Get the first element
    print(getFirstElement(array: simpleArray))
    // Get the last element
    print(getLastElement(array: simpleArray))
    // Append an element
    print(appendElement(array: simpleArray, element: "Lizard"))
    // Remove the first element
    print(removeFirstElement(array: simpleArray))
    // Remove the last element
    print(removeLastElement(array: simpleArray))
    // Remove the element at the specified index
    print(removeElementAtIndex(array: simpleArray, index: 2))
    // Insert an element at the specified index
    print(insertElementAtIndex(array: simpleArray, element: "Lizard", index: 2))
    // Replace the element at the specified index
    print(replaceElementAtIndex(array: simpleArray, element: "Apple", index: 2))
    // Sort the array
    print(sortArray(array: simpleArray))
    // Reverse the array
    print(reverseArray(array: simpleArray))
    // Check if the array contains the specified element
    print(containsElement(array: simpleArray, element: "Lizard"))
    // Get the length of the array
    print(getLength(array: simpleArray))
    // Count the number of elements that match the specified element
    print(countElement(array: simpleArray, element: "Doe"))
    // Check if the array is empty
    print(isEmpty(array: simpleArray))
    // Remove all duplicate elements from the array
    print(removeDuplicates(array: simpleArray))
    // Remove all elements from the array
    print(removeAllElements(array: simpleArray))

}

main()