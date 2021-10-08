function main(): void {
    // Loop 10 times
    loopTenTimes()
    // Loop 100 times
    loopHundredTimes()
    // Break out of the loop
    breakLoop()
    // Continue to the next iteration
    continueLoop()
    // Loop Forever
    loopForever()
}

main()

// Loop 10 times
function loopTenTimes(): void {
    for (var i: number = 0; i < 10; i++) {
        console.log(i)
    }
}

// Loop 100 times
function loopHundredTimes(): void {
    for (var i: number = 0; i < 100; i++) {
        console.log(i)
    }
}

// Break out of the loop
function breakLoop(): void {
    for (var i: number = 0; i < 10; i++) {
        if (i == 5) {
            break
        }
        console.log(i)
    }
}

// Continue to the next iteration
function continueLoop(): void {
    for (var i: number = 0; i < 10; i++) {
        if (i == 5) {
            continue
        }
        console.log(i)
    }
}

// Loop Forever
function loopForever(): void {
    var loopCounter: number = 0
    for (; ;) {
        console.log("I will loop forever.")
        loopCounter = loopCounter + 1
        if (loopCounter == 50) {
            break
        }
    }
}
