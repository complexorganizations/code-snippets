fn main() {
    // Example function
    example_function();
    // Takes in a single argument and returns an integer
    let a = 1;
    let b = add_one(a);
    println!("{}", b);
    // Takes in two int arguments and returns an int
    let c = 3;
    let d = 4;
    let e = add_numbers(c, d);
    println!("{}", e);
    // Takes in two int arguments and returns two ints
    let (f, g) = (5, 6);
    let (h, j) = swap(f, g);
    println!("{} {}", h, j);
}

// Function that takes no arguments and returns nothing
fn example_function() {
    println!("I'm an example function!");
}

// Takes in a single argument and returns an integer
fn add_one(x: i32) -> i32 {
    x + 1
}

// Takes in two arguments and returns one integer
fn add_numbers(x: i32, y: i32) -> i32 {
    x + y
}

// Takes in two arguments and returns two integers
fn swap(x: i32, y: i32) -> (i32, i32) {
    (y, x)
}
