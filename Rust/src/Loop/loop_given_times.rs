fn main() {
    loop_ten_times();
}

// Loop 10 times.
fn loop_ten_times() {
    // Set the value of the counter to 0
    let mut counter = 0;
    loop {
        // Increment the counter
        counter = counter + 1;
        // Print the current value of the counter
        println!("The current value of the counter is: {}", counter);
        // Check if the counter is 10 and than break
        if counter == 10 {
            break;
        }
    }
}
