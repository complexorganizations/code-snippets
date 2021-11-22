function main(): void {
    // Break inside loop
    let counter = 0;
    while (counter < 10) {
        console.log(counter);
        counter = counter + 1;
        if (counter == 5) {
            break;
        }
    }
}

main()