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
    // Loop over a string
    loopOverString()
    // Loop over a map
    loopOverMap()
    // Loop over a array
    loopOverArray()
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

// Loop over a string
function loopOverString(): void {
    var str: string = "Hello World"
    for (var i: number = 0; i < str.length; i++) {
        console.log(str[i])
    }
}

// Loop over a map
function loopOverMap(): void {
    var map: Map<string, number> = new Map<string, number>()
    map.set("one", 1)
    map.set("two", 2)
    map.set("three", 3)
    for (var [key, value] of map) {
        console.log(key + ": " + value)
    }
}

// Loop over a array
function loopOverArray(): void {
    var arr: number[] = [1, 2, 3]
    for (var i: number = 0; i < arr.length; i++) {
        console.log(arr[i])
    }
}
