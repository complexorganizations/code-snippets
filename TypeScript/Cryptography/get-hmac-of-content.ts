import * as crypto from "crypto"

function main(): void {
    // Get the hmac of a given content
    console.log(getHMACOfContent("Hello, World!", "random-password"))
}

main()

// Get the HMAC of a given content
function getHMACOfContent(content: string, password: string): string {
    return crypto.createHmac("sha256", password).update(content).digest("hex")
}
