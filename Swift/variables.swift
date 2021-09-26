// String variables
func stringExamples() {
    var firstName: String = "John"
    var lastName: String = "Doe"
    print(firstName + " " + lastName)
}

// Boolean variables
func booleanExamples() {
    var isMale: Bool = true
    var isFemale: Bool = false
    print(isMale, isFemale)
}

// Int variables
func intExamples() {
    var age: Int = 25
    var weight: Int = 100
    print(age, weight)
}

// Double variables
func doubleExamples() {
    var height: Double = 75.5
    var hairSize: Double = 4.3
    print(height, hairSize)
}

// Constants
func constantExamples() {
    let fullName: String = "John, Doe"
    print(fullName)
    let dobYear: Int = 1940
    print(dobYear)
    let isMarried: Bool = true
    print(isMarried)
    let heightInInches: Double = 75.5
    print(heightInInches)
}


func main() {
    // Examples of strings
    stringExamples()
    // Examples of booleans
    booleanExamples()
    // Examples of ints
    intExamples()
    // Examples of doubles
    doubleExamples()
    // Examples of constants
    constantExamples()
}

main()
