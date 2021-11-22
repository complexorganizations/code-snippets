function main(): void {
    // Continue inside loop
    for (let i = 0; i < 10; i++) {
        if (i == 5) {
            continue;
        }
        console.log(i);
    }
}

main();