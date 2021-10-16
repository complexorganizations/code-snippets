fn main() {
    // Simple loop
    simple_loop();
    // Continue loop
    continue_loop();
    // Break loop
    break_loop();
    // While loop
    while_loop();
    // Infinite loop
    infinite_loop();
}

fn simple_loop() {
    // Loop through the numbers 1 to 10
    for number in 1..11 {
        // Print the number
        println!("The current number is: {}", number);
    }
}

// Continue inside a loop
fn continue_loop() {
    // Set the value of the counter to 0
    let mut counter = 0;
    loop {
        // Increment the counter
        counter = counter + 1;
        // Print the current value of the counter
        println!("The current value of the counter is: {}", counter);
        // Check if the counter is 10 and than continue
        if counter == 10 {
            continue;
        }
        // Check if the counter is 50 and than break
        if counter == 50 {
            break;
        }
    }
    // Print the final value of the counter
    println!("The counter is now: {}", counter);
}


// Break inside a loop
fn break_loop() {
    // Set the value of the counter to 0
    let mut counter = 0;
    loop {
        // Increment counter
        counter = counter + 1;
        // Print the current value of the counter
        println!("The current value of the counter is: {}", counter);
        // Break out of the loop if the counter is equal to 10
        if counter == 10 {
            break;
        }
    }
    // Print the counter value
    println!("The counter is now: {}", counter);
}

// While loop
fn while_loop() {
    // Set the value of the counter to 0
    let mut counter = 0;
    // While the counter is less than 10
    while counter < 10 {
        // Increment the counter
        counter = counter + 1;
        // Print the current value of the counter
        println!("The current value of the counter is: {}", counter);
    }
}

// Infinite loop
fn infinite_loop() {
    let mut counter = 0;
    // Loop forever
    loop {
        // Add one to the counter.
        counter = counter + 1;
        println!("This loop will run forever!");
        if counter == 10 {
            break;
        }
    }
}
