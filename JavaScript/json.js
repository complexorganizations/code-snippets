// Sample JSON

function main() {
    var sampleJson = `{
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
}

main()

// Parse the json and return it.
function parseJson(json) {
    return JSON.parse(json)
}

// Validate the json and return true or false.
function validateJson(json) {
    try {
        JSON.parse(json)
        return true
    } catch (e) {
        return false
    }
}

// 