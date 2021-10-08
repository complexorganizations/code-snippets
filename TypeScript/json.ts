import fs from "fs"

function main(): void {
    var sampleJson:string = `{
    "names": [
        {
            "first": "John",
            "last": "Doe"
        },
        {
            "first": "Jane",
            "last": "Doe"
        }
    ]
}`
    console.log(sampleJson)
    // Parse the json and return it.
    console.log(parseJson(sampleJson))
    // Validate the json and return true or false.
    console.log(validateJson(sampleJson))
    // Write the json to a file.
    writeToFile("sample.json", sampleJson)
    // Open a file and check if the json is valid
    console.log(checkIfFileIsValidJson("sample.json"))
}

main()

// Parse the json and return it.
function parseJson(json: string): any {
    return JSON.parse(json)
}

// Validate the json and return true or false.
function validateJson(json: string): boolean {
    try {
        JSON.parse(json)
        return true
    } catch (e) {
        return false
    }
}

// Open a file and check if it is a valid json.
function checkIfFileIsValidJson(filePath: string): boolean {
    var json:string = fs.readFileSync(filePath, "utf8")
    return validateJson(json)
}

// Write some content to a specific file
function writeToFile(fileName: string, content: string): void {
    fs.writeFile(fileName, content, function (err) {
        if (err) {
            return err
        }
    })
}
