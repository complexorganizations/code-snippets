function main(): void {
    // Loop forever
    let counter = 0
    while (true) {
        console.log(counter)
        counter = counter + 1
        if (counter == 10) {
            break
        }
    }
}

main()