function main(): void {
    // Simple JSON example.
    var sampleJson: string = `{
	"names": {
		"first": "John",
		"last": "Doe"
	}
}`
    // Check if the provided string is a valid JSON.
    console.log(isJsonValid(sampleJson))
}

main()

// Check if the provided string is a valid JSON
function isJsonValid(content: string): boolean {
    try {
        JSON.parse(content)
        return true
    } catch (e) {
        return false
    }
}
