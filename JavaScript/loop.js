function main() {
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
function loopTenTimes() {
    for (var i = 0; i < 10; i++) {
        console.log(i)
    }
}

// Loop 100 times
function loopHundredTimes() {
    for (var i = 0; i < 100; i++) {
        console.log(i)
    }
}

// Break out of the loop
function breakLoop() {
    for (var i = 0; i < 10; i++) {
        if (i === 5) {
            break
        }
        console.log(i)
    }
}

// Continue to the next iteration
function continueLoop() {
    for (var i = 0; i < 10; i++) {
        if (i === 5) {
            continue
        }
        console.log(i)
    }
}

// Loop Forever
function loopForever() {
    for (;;) {
        console.log("I will loop forever.")
    }
}
