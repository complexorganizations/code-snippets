# Example of a string
def exampleString():
    firstName = "John"
    lastName = "Doe"
    fullName = firstName + " " + lastName
    print(fullName)


# Example of a integer
def exampleInteger():
    currentGrade = 89
    print(currentGrade)
    predictedGrade = currentGrade - 20
    print(predictedGrade)


# Example of a float
def exampleFloat():
    currentGPA = 3.2
    print(currentGPA)
    predictedGPA = currentGPA + 0.2
    print(predictedGPA)


# Example of a boolean
def exampleBoolean():
    isMale = True
    print(isMale)
    isMale = False
    print(isMale)


# Example of a list
def exampleList():
    students = ["John", "Jane", "Jack"]
    print(students)
    students.append("Jim")
    print(students)


# Example of an Tuple
def exampleTuple():
    grades = (3.9, 3.5, 3.7)
    print(grades)
    (a, b, c) = grades
    print(a)
    print(b)
    print(c)


# Example of a key-value pair (MAP)
def exampleMap():
    grades = {"John": 3.9, "Jane": 3.5, "Jack": 3.7}
    print(grades)
    # Get a value
    print(grades["John"])
    # Add a value
    grades["Jim"] = 3.2
    print(grades)
    # Update a value
    grades["John"] = 3.9
    print(grades)
    # Delete a value
    del grades["John"]
    print(grades)
    # Check if a key exists
    if "John" in grades:
        print("John exists")
    else:
        print("John does not exist")

# Example of a set


def exampleSet():
    grades = {3.9, 3.5, 3.7}
    print(grades)
    # Add a value
    grades.add(3.2)
    print(grades)
    # Update a value
    grades.add(3.9)
    print(grades)
    # Delete a value
    grades.remove(3.9)
    print(grades)
    # Check if a key exists
    if 3.9 in grades:
        print("3.9 exists")
    else:
        print("3.9 does not exist")


# Example of a none
def exampleNone():
    grades = None
    print(grades)
    # Add a value
    grades = 3.2
    print(grades)
    # Update a value
    grades = 3.9
    print(grades)
    # Delete a value
    grades = None
    print(grades)
    # Check if a key exists
    if grades is None:
        print("grades is None")
    else:
        print("grades is not None")


def main():
    # Example of a string
    exampleString()
    # Example of a integer
    exampleInteger()
    # Example of a float
    exampleFloat()
    # Example of a boolean
    exampleBoolean()
    # Example of a list
    exampleList()
    # Example of an Tuple
    exampleTuple()
    # Example of a key-value pair (MAP)
    exampleMap()
    # Set
    exampleSet()
    # None
    exampleNone()


main()
