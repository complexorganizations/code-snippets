// Simple function no arguments and no returns
func noArgumentsNoReturns() {
    print("No arguments no returns")
}

// Simple function with arguments and no returns
func oneArgumentsNoReturns(content: String) {
    print("One argument no returns: \(content)")
}

// Simple function with arguments and returns
func oneArgumentsReturns(content: String) -> String {
    return "One argument returns: \(content)"
}

// Simple function with two arguments and no returns
func twoArgumentsNoReturns(content1: String, content2: String) {
    print("Two arguments no returns: \(content1), \(content2)")
}

// Simple function with two arguments and returns
func twoArgumentsReturns(content1: String, content2: String) -> (String, String) {
    return ((content1), (content2))
}

func main() {
    // No arguments no returns
    noArgumentsNoReturns()
    // One argument no returns
    oneArgumentsNoReturns(content: "Hello")
    // One argument returns
    print(oneArgumentsReturns(content: "Hello"))
    // Two arguments no returns
    twoArgumentsNoReturns(content1: "Hello", content2: "World")
    // Two arguments returns
    print(twoArgumentsReturns(content1: "Hello", content2: "World"))
}

main()