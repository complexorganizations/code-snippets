fn main() {
    // An example of an if statement
    if_statement();
    // An example of a if statement
    if_else_statement();
    // An example of an if else statement
    if_else_if_statement();
    // An example of an if else if else statement
    if_else_if_else_statement();
}

// Example of a if statement
fn if_statement() {
    let food = "Apple";
    if food == "Apple" {
        println!("{}", food);
    }
}

// Example of a if else statement
fn if_else_statement() {
    let gender = "Male";
    if gender == "Male" {
        println!("{}", gender);
    } else {
        println!("Unknown")
    }
}

// Example of a if else if statement
fn if_else_if_statement() {
    let name = "John";
    if name == "John" {
        println!("{}", name);
    } else if name == "Jane" {
        println!("{}", name);
    }
}

// Example of a if else if else statement
fn if_else_if_else_statement() {
    let age = 30;
    if age == 10 {
        println!("{}", age)
    } else if age == 20 {
        println!("{}", age)
    } else {
        println!("Unknown")
    }
}
