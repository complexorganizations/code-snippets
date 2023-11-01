fn main() {
    // Divide two numbers
    println!("10 / 2 = {}", divide_two_numbers(10, 2));
}

// Divide two numbers and than return the quotient.
fn divide_two_numbers(primary: i32, secondary: i32) -> f64 {
    return primary as f64 / secondary as f64;
}
