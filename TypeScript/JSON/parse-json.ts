function main(): void {
    // Simple JSON example.
    var sampleJson: string = `{
	"names": {
		"first": "John",
		"last": "Doe"
	}
}`
    // Parse the json.
    console.log(parseJson(sampleJson))
}

main()

// Parse the json and return it.
function parseJson(content: string): any {
    return JSON.parse(content)
}