import * as crypto from "crypto"

function main(): void {
    // Randomize the order of a string and return it
    console.log(randomizeTheOrderInString("Hello World"))
}

main()

// Randomize the order of a string and return it
function randomizeTheOrderInString(content: string): string {
    var chars: string[] = content.split("")
    var randomString: string = ""
    for (var i: number = 0; i < chars.length; i++) {
        var index: number = crypto.randomInt(chars.length)
        randomString += chars[index]
    }
    return randomString
}