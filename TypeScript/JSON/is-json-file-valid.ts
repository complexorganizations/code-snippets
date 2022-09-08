import * as fs from "fs"

function main(): void {
    // Check if a file is valid JSON.
    console.log(isValidJSON("assets/valid/valid-json.json"))
}

main()

// Check if a file is valid JSON.
function isValidJSON(path: string): boolean {
    var content: string = fs.readFileSync(path, "utf8")
    try {
        JSON.parse(content)
        return true
    } catch (e) {
        return false
    }
}
