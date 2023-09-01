fn main() {
    while_loop();
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
