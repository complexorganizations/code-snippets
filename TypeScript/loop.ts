function main() {
    // Loop ten times
    loop_ten_times()
    // Loop one hundred times
    loop_one_hundred_times()
    // Loop through an array
    loop_through_array()
    // Loop through an object
    loop_through_object()
    // Loop through an array of objects
    loop_through_array_of_objects()
}

main()

// Loop ten times
function loop_ten_times() {
    for (let i = 0; i < 10; i++) {
        console.log(i)
    }
}

// Loop one hundred times
function loop_one_hundred_times() {
    for (let i = 0; i < 100; i++) {
        console.log(i)
    }
}

// Loop through an array
function loop_through_array() {
    const array = [1, 2, 3, 4, 5]
    for (let i = 0; i < array.length; i++) {
        console.log(array[i])
    }
}

// Loop through an object
function loop_through_object() {
    const object = {
        name: "John",
        age: 30,
        city: "New York"
    }
    for (let key in object) {
        console.log(object[key])
    }
}

// Loop through an array of objects
function loop_through_array_of_objects() {
    const array = [
        {
            name: "John",
            age: 30,
            city: "New York"
        },
        {
            name: "Mike",
            age: 23,
            city: "Los Angeles"
        },
        {
            name: "Mary",
            age: 28,
            city: "Miami"
        }
    ]
    for (let i = 0; i < array.length; i++) {
        console.log(array[i])
    }
}
