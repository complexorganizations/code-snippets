function main(): void {
    var name: string = "John"
    switch (name) {
        case "John":
            console.log("Hello John")
            break
        case "David":
            console.log("Hello David")
            break
        case "Mike":
            console.log("Hello Mike")
            break
        default:
            console.log("Hello Stranger")
            break
    }
}

main()