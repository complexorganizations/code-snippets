function main(): void {
    // Get the type of a given IP.
    console.log(getIPType("1.1.1.1"))
}

main()

// Get the type of a given ip, IPV4; IPV6
function getIPType(content: string): string {
    if (content.includes(".")) {
        return "ipv4"
    } else if (content.includes(":")) {
        return "ipv4"
    }
    return "unknown"
}
