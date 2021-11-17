import * as crypto from "crypto"

function main(): void {
    // Generate a random string of specified length and characters
    console.log(randomStringSpecified(10))
}

main()

// Generate a random string of specified length and specified characters
function randomStringSpecified(length: number): string {
    var randomText: string = ""
    var possibleText: string = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    for (var i: number = 0; i < length; i++) {
        randomText = randomText + possibleText.charAt((crypto.randomInt(possibleText.length)))
    }
    return randomText
}