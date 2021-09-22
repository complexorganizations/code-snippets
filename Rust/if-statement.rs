fn main() {
    if_statement();
    if_else_if_statement();
    if_else_if_else_statement();
}

// Example of a if statement
fn if_statement() {
    let food = "Apple";
    if food == "Apple" {
        println!("{}", food);
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
