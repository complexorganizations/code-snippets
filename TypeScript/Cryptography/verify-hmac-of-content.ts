import * as crypto from "crypto"

function main(): void {
    // Verify the HMAC of a given content
    console.log(verifyHMACOfContent("Hello, World!", "random-password", "8f0ad25ae630bdd7e39ca3b6b54f3283cd980ac74d508f525baf8c3e43da280e"))
}

main()

// Verify the HMAC of a given content
function verifyHMACOfContent(content: string, password: string, hmac: string): boolean {
    return crypto.createHmac("sha256", password).update(content).digest("hex") == hmac
}
