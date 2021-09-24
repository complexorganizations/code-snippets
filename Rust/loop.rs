fn main() {
    // Set the value of the counter to 0
    let mut counter = 0;
    loop {
        // Add 1 to the counter
        counter = counter + 1;
        // Print the current value at the counter.
        println!("{}", counter);
        // If the counter is 10, break out of the loop
        if counter == 10 {
            continue;
        }
        // If the counter is 20, break out of the loop
        if counter == 20 {
            break;
        }
    }
}
