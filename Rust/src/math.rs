#![allow(clippy::needless_return)]
#![allow(clippy::assign_op_pattern)]
fn main() {
    // Add two numbers
    println!("1 + 2 = {}", add_two_numbers(1, 2));
    // Subtract two numbers
    println!("1 - 2 = {}", subtract_two_numbers(1, 2));
    // multiply two numbers
    println!("1 * 2 = {}", multiply_two_numbers(1, 2));
    // divide two numbers
    println!("1 / 2 = {}", divide_two_numbers(1, 2));
}

// Add two numbers and than return the sum.
fn add_two_numbers(primary: i32, secondary: i32) -> i32 {
    return primary + secondary;
}

// Subtract two numbers and than return the difference.
fn subtract_two_numbers(primary: i32, secondary: i32) -> i32 {
    return primary - secondary;
}

// Multiply two numbers and than return the product.
fn multiply_two_numbers(primary: i32, secondary: i32) -> i32 {
    return primary * secondary;
}

// Divide two numbers and than return the quotient.
fn divide_two_numbers(primary: i32, secondary: i32) -> f64 {
    return primary as f64 / secondary as f64;
}
