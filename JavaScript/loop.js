function main() {
    // Loop 10 times
    for (var i = 0; i < 10; i++) {
        console.log(i);
    }
    // Loop 100 times
    for (var i = 0; i < 100; i++) {
        console.log(i);
    }
    // Break out of the loop
    for (var i = 0; i < 10; i++) {
        if (i > 5) {
            break;
        }
        console.log(i);
    }
    // Continue to the next iteration
    for (var i = 0; i < 10; i++) {
        if (i > 5) {
            continue;
        }
        console.log(i);
    }
    // Loop Forever
    for (;;) {
        console.log("I will loop forever.");
    }
}

main();
